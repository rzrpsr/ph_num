CREATE TABLE country_codes (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	code VARCHAR(3) NOT NULL,
	subcodes VARCHAR(255) NOT NULL,
	name VARCHAR(255) NOT NULL,
	PRIMARY KEY (id),
	UNIQUE (name)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO country_codes (code, subcodes, name) VALUES
("1", "684", "Американское Самоа"),
("1", "264", "Ангилья"),
("1", "268", "Антигуа и Барбуда"),
("1", "242", "Багамские Острова"),
("1", "242", "Барбадос"),
("1", "441", "Бермудские острова"),
("1", "284|340", "Виргинские острова"),
("1", "473", "Гренада"),
("1", "671", "Гуам"),
("1", "767", "Доминика"),
("1", "809|829|849", "Доминиканская Республика"),
("1", "345", "Каймановы Острова"),
("1", "204|306|403|416|418|514|604|613|879|709|902", "Канада"),
("1", "664", "Монтсеррат"),
("1", "649", "Острова Теркс и Кайкос"),
("1", "787|869", "Пуэрто-Рико"),
("1", "670", "Северные Марианские острова"),
("1", "784", "Сен-Винсент и Гренадины"),
("1", "869", "Сент-Китс и Невис"),
("1", "758", "Сент-Люсия"),
("1", "721", "Синт-Мартен"),
("1", "", "Соединенные Штаты Америки"),
("1", "868", "Тринидад и Тобаго"),
("1", "658|869", "Ямайка"),
("7", "0|6|7", "Казахстан"),
("7", "", "Россия"),
("20", "", "Египет"),
("27", "", "Южно-Африканская Республика"),
("30", "", "Греция"),
("31", "", "Нидерланды"),
("32", "", "Бельгия"),
("33", "", "Франция"),
("34", "", "Испания"),
("36", "", "Венгрия"),
("39", "06698", "Ватикан"),
("39", "", "Италия"),
("40", "", "Румыния"),
("41", "", "Швейцария"),
("43", "", "Австрия"),
("44", "", "Великобритания"),
("45", "", "Дания"),
("46", "", "Швеция"),
("47", "", "Норвегия"),
("48", "", "Польша"),
("49", "", "Германия"),
("51", "", "Перу"),
("52", "", "Мексика"),
("53", "", "Куба"),
("54", "", "Аргентина"),
("55", "", "Бразилия"),
("56", "", "Чили"),
("57", "", "Колумбия"),
("58", "", "Венесуэла"),
("60", "", "Малайзия"),
("61", "", "Австралия"),
("62", "", "Индонезия"),
("63", "", "Филиппины"),
("64", "", "Новая Зеландия"),
("65", "", "Сингапур"),
("66", "", "Таиланд"),
("81", "", "Япония"),
("82", "", "Республика Корея"),
("84", "", "Вьетнам"),
("86", "", "Китайская Народная Республика"),
("90", "", "Турция"),
("91", "", "Индия"),
("92", "", "Пакистан"),
("93", "", "Афганистан"),
("94", "", "Шри-Ланка"),
("95", "", "Мьянма"),
("98", "", "Иран"),
("211", "", "Южный Судан"),
("212", "", "Марокко"),
("213", "", "Алжир"),
("216", "", "Тунис"),
("218", "", "Ливия"),
("220", "", "Гамбия"),
("221", "", "Сенегал"),
("222", "", "Мавритания"),
("223", "", "Мали"),
("224", "", "Гвинея"),
("225", "", "Кот-д'Ивуар"),
("226", "", "Буркина-Фасо"),
("227", "", "Нигер"),
("228", "", "Того"),
("229", "", "Бенин"),
("230", "", "Маврикий"),
("231", "", "Либерия"),
("232", "", "Сьерра-Леоне"),
("233", "", "Гана"),
("234", "", "Нигерия"),
("235", "", "Чад"),
("236", "", "Центральноафриканская Республика"),
("237", "", "Камерун"),
("238", "", "Кабо-Верде"),
("239", "", "Сан-Томе и Принсипи"),
("240", "", "Экваториальная Гвинея"),
("241", "", "Габон"),
("242", "", "Конго"),
("243", "", "Демократическая Республика Конго"),
("244", "", "Ангола"),
("245", "", "Гвинея-Бисау"),
("246", "", "Британская территория в Индийском океане, Диего-Гарсия"),
("247", "", "Остров Вознесения"),
("248", "", "Сейшельские Острова"),
("249", "", "Судан"),
("250", "", "Руанда"),
("251", "", "Эфиопия"),
("252", "", "Сомали"),
("253", "", "Джибути"),
("254", "", "Кения"),
("255", "", "Танзания"),
("256", "", "Уганда"),
("257", "", "Бурунди"),
("258", "", "Мозамбик"),
("260", "", "Замбия"),
("261", "", "Мадагаскар"),
("262", "", "Реюньон"),
("263", "", "Зимбабве"),
("264", "", "Намибия"),
("265", "", "Малави"),
("266", "", "Лесото"),
("267", "", "Ботсвана"),
("268", "", "Эсватини"),
("269", "", "Коморы"),
("290", "", "Остров Святой Елены, острова Тристан да Кунья"),
("291", "", "Эритрея"),
("297", "", "Аруба"),
("298", "", "Фарерские острова"),
("299", "", "Гренландия"),
("350", "", "Гибралтар"),
("351", "", "Португалия"),
("352", "", "Люксембург"),
("353", "", "Ирландия"),
("354", "", "Исландия"),
("355", "", "Албания"),
("356", "", "Мальта"),
("357", "", "Кипр"),
("358", "", "Финляндия"),
("359", "", "Болгария"),
("370", "", "Литва"),
("371", "", "Латвия"),
("372", "", "Эстония"),
("373", "", "Молдова"),
("373", "21|5|77", "Приднестровье"),
("374", "", "Армения"),
("375", "", "Беларусь"),
("376", "", "Андорра"),
("377", "", "Монако"),
("378", "", "Сан-Марино"),
("380", "", "Украина"),
("381", "", "Сербия"),
("382", "", "Черногория"),
("383", "", "Косово"),
("385", "", "Хорватия"),
("386", "", "Словения"),
("387", "", "Босния и Герцеговина"),
("389", "", "Северная Македония"),
("420", "", "Чешская Республика"),
("421", "", "Словакия"),
("423", "", "Лихтенштейн"),
("500", "", "Фолклендские острова"),
("501", "", "Белиз"),
("502", "", "Гватемала"),
("503", "", "Сальвадор"),
("504", "", "Гондурас"),
("505", "", "Никарагуа"),
("506", "", "Коста-Рика"),
("507", "", "Панама"),
("508", "", "Сен-Пьер и Микелон"),
("509", "", "Гаити"),
("590", "", "Гваделупа, Сен-Бартелеми, Сен-Мартен"),
("591", "", "Боливия"),
("592", "", "Гайана"),
("593", "", "Эквадор"),
("594", "", "Французская Гвиана"),
("596", "", "Мартиника"),
("597", "", "Суринам"),
("598", "", "Уругвай"),
("599", "", "Бонайре, Синт-Эстатиус и Саба, Кюрасао"),
("670", "", "Восточный Тимор"),
("672", "", "Внешние территории Австралии"),
("673", "", "Бруней-Даруссалам"),
("674", "", "Науру"),
("675", "", "Папуа — Новая Гвинея"),
("676", "", "Тонга"),
("677", "", "Соломоновы Острова"),
("678", "", "Вануату"),
("679", "", "Фиджи"),
("680", "", "Палау"),
("681", "", "Уоллис и Футуна"),
("682", "", "Острова Кука"),
("683", "", "Ниуэ"),
("685", "", "Самоа"),
("686", "", "Кирибати"),
("687", "", "Новая Каледония"),
("688", "", "Тувалу"),
("689", "", "Французская Полинезия"),
("690", "", "Токелау"),
("691", "", "Микронезия"),
("692", "", "Маршалловы Острова"),
("850", "", "Корейская Народно-Демократическая Республика"),
("852", "", "Гонконг"),
("853", "", "Макао"),
("855", "", "Камбоджа"),
("856", "", "Лаос"),
("880", "", "Бангладеш"),
("886", "", "Тайвань"),
("960", "", "Мальдивская Республика"),
("961", "", "Ливан"),
("962", "", "Иордания"),
("963", "", "Сирия"),
("964", "", "Ирак"),
("965", "", "Кувейт"),
("966", "", "Саудовская Аравия"),
("967", "", "Йемен"),
("968", "", "Оман"),
("970", "", "Палестина"),
("971", "", "ОАЭ"),
("972", "", "Израиль"),
("973", "", "Бахрейн"),
("974", "", "Катар"),
("975", "", "Бутан"),
("976", "", "Монголия"),
("977", "", "Непал"),
("992", "", "Таджикистан"),
("993", "", "Туркменистан"),
("994", "", "Азербайджан"),
("995", "", "Грузия"),
("996", "", "Кыргызстан"),
("998", "", "Узбекистан");
