<?php
    require_once "conexion.php";
        header('Content-Type: text/html; charset-ISO-8859-1');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Procesar Materia</title>
</head>
<body>
    <?php
        $cve_materia=$conexion->real_escape_string($_POST['cve_materia']);
        $descripcion=$conexion->real_escape_string($_POST['descripcion']);
        $carrera=$conexion->real_escape_string($_POST['carrera']);
        $comentarios=$conexion->real_escape_string($_POST['comentarios']);
        $cve_profesor=$conexion->real_escape_string($_POST['cve_profesor']);
        
        echo"$cve_materia <br>";
        echo"$descripcion <br>";
        echo"$carrera <br>";
        echo"$comentarios <br>";
        echo"$cve_profesor <br>";

        $sql = "INSERT INTO materias";
        $sql = $sql."(cve_materia,descripcion,carrera,comentarios,cve_profesor)";
        $sql = $sql." values ('$cve_materia','$descripcion','$carrera','$comentarios','$cve_profesor')";

        $result = $conexion->query($sql);
        if ($result === false) {
            $errorbd = $conexion->errno;
            if ($errorbd == 1062) {
                echo"La clave de la materia ya existe, favor de ingresar una nueva.";
            }else {
                trigger_error('Error, favor de informar a la administracion SQL: '.$sql.'Error:'.$conexion->error, E_USER_ERROR);
            }
        }else {
            echo"Datos correctos. <br>";

            $affeted_rows = $conexion->affected_rows;
            echo"$affeted_rows registro fue insertado correctamente.";
        }

    ?>
</body>
</html>