<?php

$server = 'localhost';
$username = 'root';
$password = "";
$database = 'my_tienda';

$conexion = new mysqli($server,$username,$password,$database);

if ($conexion->connect_errno){
    echo "fallos de conexion";
    exit();
}

?>