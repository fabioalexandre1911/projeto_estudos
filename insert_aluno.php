<?php  

	include_once 'php/conexao.php';
	include_once 'php/funcoes.php';

	# Inserndo os dados no banco
	$res = insert("alunos", $_POST);

	if($res){
		header("location: alunos_lista.php");
	}else{
		header("location: alunos_lista.php?erro=erro no cadastro");		
	}

?>