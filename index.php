<!DOCTYPE html>
<html>
<head>
	<title>Registrar usuario</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>
    <form method="post">
    	<h1>¡Suscribete!</h1>
    	<input type="text" name="name" placeholder="Nombre completo">
    	<input type="ape_pat" name="ape_pat" placeholder="ape_pat">
		<input type="ape_mat" name="ape_mat" placeholder="ape_mat">
		<input type="matricula" name="matricula" placeholder="matricula">
		<input type="email" name="email" placeholder="Email">
		<input type="telefono" name="telefono" placeholder="telefono">
		<input type="facultad" name="facultad" placeholder="facultad">
		<input type="carrera" name="carrera" placeholder="carrera">
    	<input type="submit" name="register">
    </form>
        <?php 
        include("registrar.php");
        ?>
</body>
</html>