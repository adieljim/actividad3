<?php
    require_once "conexion.php";
        header('Content-Type: text/html; charset-ISO-8859-1');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar nueva materia</title>
</head>
<body>
    <nav class="navigation">
    
    </nav>

    <form action="procesar_materia.php" method="post">
        <label >Clave Materia:</label>
        <br>
        <input type="text" name="cve_materia">
        <br>
        <label >Descripci&oacute;n:</label>
        <br>
        <input type="text" name="descripcion">
        <br>
        <label >Carrera:</label>
        <br>
        <input type="text" name="carrera">
        <br>
        <label >Comentarios:</label>
        <br>
        <input type="text" name="comentarios">
        <br>

        <label>Profesor: </label>
        <select name="cve_profesor">
            <?php
                $sql = "SELECT cve_profesor, Nombre, Apellidos FROM profesores";
                $result = $conexion->query($sql);

                if ($result === false) {
                    trigger_error('Error, favor de informar al administración SQL: '.$sql.'Error:'.$conexion->error, E_USER_ERROR);
                }else {
                    $num_rows = $result->num_rows;
                    $result->data_seek(0);

                    while ($row = $result->fetch_assoc()) {
                        echo"<option value=\"".$row['cve_profesor']."\">".$row['Nombre']." ".$row['Apellidos']."</option>";
                    }

                }   
            ?>
        </select>
        <br>
        <input type="submit" value="Agregar">
    </form>

</body>
</html>