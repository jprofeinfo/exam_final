<?php 

    include "conexion.php";

    // Obtenemos los datos modificados por POST
    $idm = $_GET["idmodifica"];
    $identificador = $_POST["identificador"];
    $nombre = $_POST["nombre"];
    $descripcion = $_POST["descripcion"];
    $precio = $_POST["precio"];

    // Construimos la consulta de UPDATE





    // Todo OK y redirigimos flujo
    header("Location:actualiza_ok.php");
    ?>
