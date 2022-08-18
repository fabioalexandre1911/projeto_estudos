<?php  

	# Variáveis de acesso
	$host = "localhost";
	$user = "root";
	$pass = "";
	$dbname = "lib_power";


	# Fazendo a conexão com o banco
	$conn = mysqli_connect($host, $user, $pass, $dbname) or 
	die("Erro: ".mysqli_connect_error());



?>