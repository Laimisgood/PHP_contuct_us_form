===============================================================================
==Тебования для полноценной работы сайта=======================================
===============================================================================
	-Apache 2.4 и выше
	-MariaDB 10.9 и выше
	-PHP 8.0 и выше
--На данном этапе расчитано, что LAMP, WAMP, MAMP или XAMPP будут
предварительно установлены и настроены 
===============================================================================
==Подгтовака к запуску сайта===================================================
===============================================================================
--Содержимое архива contactform.devel.zip распаковать в директорию опубликованного
сайта
--Экспортировать файл contactusform.sql в phpMyAdmin
--В файле connection.php, заменить переменные на свои данные:
	$servername = 'localhost';
	$username = 'user_sql';
	$password = 'password_sql';
--В файле index.php, заменить переменную на почту получателя:
	$mail_recipient = 'example@gmail.com';
===============================================================================
==Работа с сайтом обратной связи===============================================
===============================================================================
-Требуется запустить сайт перейдя по ссылке опубликованного сайта
http://your-url.site/
-Ввести все данные и нажать кнопку "Submit", далее проверить результат выбрав
вкладку Result.
===============================================================================

