<?php

include '../db/conexion.php';

if(isset($_POST['registrotienda'])) {
   $nombre = $_POST['nombre'];
   $correo = $_POST['correo'];
   $telefono = $_POST['telefono'];
   $descri = $_POST['descri'];
   $contra = $_POST['contra'];
   
   $contra_en = base64_encode($contra);

   $sql = mysqli_query($conexion,"INSERT INTO regis_tienda (Nombre, Correo, Telefono, Descripcion, Contrasena) VALUES
   ('$nombre','$correo', '$telefono', '$descri', '$contra_en')");

    header ('location:../iniciosesiontienda.html');
    
}
?>