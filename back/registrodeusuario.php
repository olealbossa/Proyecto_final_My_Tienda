<?php

include '../db/conexion.php';

if(isset($_POST['registrousu'])) {
   $nombre = $_POST['nombre'];
   $apellido = $_POST['apellido'];
   $correo = $_POST['correo'];
   $telefono = $_POST['telefono'];
   $contra = $_POST['contra'];
   
   $contra_en = base64_encode($contra);

   $sql = mysqli_query($conexion,"INSERT INTO regis_usuarios (Nombre, Apellido, Correo, Telefono, Contrasena) VALUES
   ('$nombre', '$apellido', '$correo', '$telefono', '$contra_en')");

    header ('location:../iniciosesionusuario.php');
    
}
?>