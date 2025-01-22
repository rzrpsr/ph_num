<!DOCTYPE html>
<html lang="ru">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Проверка номера телефона</title>
	<style>
		body { font: bold 16px sans-serif; }
		input { font-size: 18px; }
		form { display: inline-block; }
		form input[type="text"] { font-family: monospace; }
		#msgTitle { margin: 1em auto 0.5em; }
		#message { margin-left: 1vw; color: #3A8; }
		.errorMsg { color: #C00 !important; }
	</style>
</head>
<body>
	<div id="form_container">
		<form id="main_form" onsubmit="checkNumber(); return false;">
			<input type=text name="phoneNumber" placeholder="Введите номер..." />
		</form>
		<input type=button id="checkNumberBtn" value="Проверить" />
	</div>
	<div id="msgTitle">Результат:</div>
	<div id="message"></div>

	<script>
		function checkNumber() {
			const messageContainer = document.getElementById("message");
			messageContainer.innerHTML = "";

			fetch("", {
				method: "POST",
				cache: "no-cache",
				body: new FormData(document.getElementById("main_form"))
			}).then(ans => ans.json()).then(res => {
				messageContainer.classList[res.successful ? "remove" : "add"]("errorMsg");
				messageContainer.innerText = res.successful ?
					`Страна/территория: ${res.country}.` :
					"Неправильный номер.";
			}).catch(() => alert("Ошибка."));
		}

		document.getElementById("checkNumberBtn").addEventListener("click", checkNumber);
	</script>
</body>
</html>