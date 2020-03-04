<?php
//ip del servidor de bases de datos
define("DB_HOST", "localhost");
//nombre de la base de datos
define("DB_NAME", "test_iniciales");
//nombre del usuario de la base de datos
define("DB_USERNAME", "root");
//contraseña de la base de datos
define("DB_PASSWORD", "");
//codificacion de la base de datos
define("DB_ENCODE", "utf-8");

$conexion = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

mysqli_query($conexion, 'SET NAMES "'.DB_ENCODE.'"');

//Si hay error muestralo
if(mysqli_connect_errno()){
    printf("Falló la conexión a la base de datos: %s\n", mysqli_connect_error());
    exit();
}