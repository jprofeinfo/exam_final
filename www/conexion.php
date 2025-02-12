<?php

//Configurar nuestros datos de conexión a la BD ////////////////////////////////////////

$servidor = "db";
$usuario = "root";
$password ="test";

$conexion = mysqli_connect($servidor, $usuario, $password) or die ("Error de conexión");

mysqli_select_db($conexion,"exam_pdf");

?>