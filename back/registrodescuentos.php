<?php

include '../db/conexion.php';

if(isset($_POST['regis_proct'])) {
   $NomProduc = $_POST['NomProduc'];
   $TiProduc = $_POST['TiProduc'];
   $n_imgproduc = $_FILES['imgproduc']['name'];
   $imgproduc = $_FILES['imgproduc']['tmp_name'];
   $DescripProduc = $_POST['DescripProduc'];
   $PrecioProduc = $_POST['PrecioProduc'];
   
   $ruta = "../imgs/" .$n_imgproduc;
   $base_datos = "imgs/" .$n_imgproduc;

   move_uploaded_file($imgproduc,$ruta); 
  
   $sql = mysqli_query($conexion,"INSERT INTO descuentos (Nombre_Producto, Tipo_Producto, img_productos, Descripcion_Producto, Precio_Descuento) VALUES
   ('$NomProduc', '$TiProduc', '$base_datos','$DescripProduc', '$PrecioProduc')");

    header ('location:../listadodescuentos.php');
    
}
?>