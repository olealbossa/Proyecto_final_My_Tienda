<?php

include '../db/conexion.php';

if (isset($_POST['inicio'])) {
   $correo = $_POST['correo'];
   $contra = $_POST['contra'];
   $contra_enc = base64_encode($contra);

   $consulta = mysqli_query($conexion,"SELECT * from regis_usuarios 
    where Correo = '$correo' AND Contrasena = '$contra_enc'");

  $cant = mysqli_num_rows($consulta);
  

  if ($cant ==1) {
    while ($captura = mysqli_fetch_array($consulta)) {
      session_start();
      $_SESSION['usuario'] = $captura['Nombre'];
      $_SESSION['rol'] = $captura['rol'];
      $_SESSION['correo'] = $captura['Correo'];
  }
      header('location:../casa.php');
  }else{
      header('location:../registrousuario.html');
  }
 
}
?>