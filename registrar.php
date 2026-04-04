<?php 

include("con_db.php");
if($conex){
	echo "todo correcto";
}

if (isset($_POST['register'])) {
    if (strlen($_POST['name']) >= 1 && strlen($_POST['email']) >= 1) {
	    $name = trim($_POST['name']);
	    $ape_pat = trim($_POST['ape_pat']);
		$ape_mat = trim($_POST['ape_mat']);
		$matricula = trim($_POST['matricula']);
		$email = trim($_POST['email']);
		$telefono = trim($_POST['telefono']);
		$facultad = trim($_POST['facultad']);
		$carrera = trim($_POST['carrera']);
	    $consulta = "INSERT INTO alumnos(nombre, ape_pat, ape_mat, matricula, correo, telefono, facultad, carrera) VALUES ('$name','$ape_pat','$ape_mat','$matricula','$email','$telefono','$facultad','$carrera')";
	    $resultado = mysqli_query($conex,$consulta);
	    if ($resultado) {
	    	?> 
	    	<h3 class="ok">¡Te has inscripto correctamente!</h3>
           <?php
	    } else {
	    	?> 
	    	<h3 class="bad">¡Ups ha ocurrido un error!</h3>
           <?php
	    }
    }   else {
	    	?> 
	    	<h3 class="bad">¡Por favor complete los campos!</h3>
           <?php
    }
}

?>