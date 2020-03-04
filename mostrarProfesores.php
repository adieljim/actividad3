<?php
    require_once "conexion.php";
        header('Content-Type: text/html; charset-ISO-8859-1');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de profesores</title>
</head>
<body>
    <nav class="navigation">
    
    </nav>

    <?php
        $sql = "SELECT cve_profesor, Nombre, Apellidos FROM profesores";
        $result = $conexion->query($sql);

        if ($result === false) {
            trigger_error('Error, favor de informar a la administracion SQL: '.$sql.'Error:'.$conexion->error, E_USER_ERROR);
        }else {
            $num_rows = $result->num_rows;
            $result->data_seek(0);

            echo "<table border='1'>
            <tr>
                <th>Cve Profesor</th>
                <th>Nombre</th>
                <th>Apellidos</th>
            </tr>";

            while ($row = $result->fetch_assoc()) {
                echo"<tr>";
                echo"<th>"
                    .$row['cve_profesor'].
                "</th>
                <th>"
                    .$row['Nombre'].
                "</th>
                <th>"
                    .$row['Apellidos'].
                "</th>";
                echo"</tr>";
            }

            echo "</table>";

        }
    ?>
    
</body>
</html>