<?php
// HTTP
define('HTTP_SERVER', 'http://localhost/ziabee/');

// HTTPS
define('HTTPS_SERVER', 'http://localhost/ziabee/');

// DIR
define('DIR_APPLICATION', 'C:/xamppp/htdocs/ziabee/catalog/');
define('DIR_SYSTEM', 'C:/xamppp/htdocs/ziabee/system/');
define('DIR_IMAGE', 'C:/xamppp/htdocs/ziabee/image/');
define('DIR_STORAGE', 'C:/xamppp/htdocs/ziabee/storage/');
define('DIR_LANGUAGE', DIR_APPLICATION . 'language/');
define('DIR_TEMPLATE', DIR_APPLICATION . 'view/theme/');
define('DIR_CONFIG', DIR_SYSTEM . 'config/');
define('DIR_CACHE', DIR_STORAGE . 'cache/');
define('DIR_DOWNLOAD', DIR_STORAGE . 'download/');
define('DIR_LOGS', DIR_STORAGE . 'logs/');
define('DIR_MODIFICATION', DIR_STORAGE . 'modification/');
define('DIR_SESSION', DIR_STORAGE . 'session/');
define('DIR_UPLOAD', DIR_STORAGE . 'upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'ziabee');
define('DB_PORT', '3306');
define('DB_PREFIX', 'zi_');