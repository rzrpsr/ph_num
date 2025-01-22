<?php
	require 'config.php';

	function checkAndClearPhoneNumber($number) {
		$pureNumber = preg_replace(["/[^\d]/", "/^00/"], "", $number);
		if (
			(strlen($pureNumber) < 10) ||
			!(bool)preg_match(
				'/^((\((\+|00(\s|-)?)?\d+\))|((\+|00(\s|-)?)?\d+))(\s|-)?' .
				'(\(\d+\)(\s|-)?)?(\d+(\s|-)?)+\d+$/',
				$number
			)
		)
			return false;
		else
			return $pureNumber;
	}

	if (isset($_POST['phoneNumber'])) {
		$number = checkAndClearPhoneNumber($_POST['phoneNumber']);
		$successful = (bool)$number;
		$country = null;

		if ($successful) {
			$data = [];

			$db = new mysqli($db_server, $db_user, $db_password, $db_name);
			$db->set_charset('utf8');

			$ans = $db->query("
				SELECT * FROM country_codes WHERE
					LENGTH(subcodes) > 0 AND '$number' LIKE CONCAT(code, '%') AND
					'$number' REGEXP CONCAT('^', code, '(', subcodes, ')')
			");
			$data = $ans->fetch_assoc();
			$ans->free_result();

			if (!$data) {
				$ans = $db->query("
					SELECT * FROM country_codes WHERE
						LENGTH(subcodes) = 0 AND '$number' LIKE CONCAT(code, '%')
				");
				$data = $ans->fetch_assoc();
				$ans->free_result();
			}

			if (!$data) $successful = false;
			else $country = $data['name'];
		}

		echo JSON_encode([
			'successful' => $successful,
			'country' => $country,
		]);
	}
	else require 'form.php';
?>