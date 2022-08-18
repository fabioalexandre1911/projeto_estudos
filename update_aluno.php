<?php  
	
	include_once 'php/conexao.php';
	include_once 'php/funcoes.php';

	# Atuaizando os dados no banco
	$res = update("alunos", $_POST, array("id_aluno"=>$_POST['id_aluno']));

	if($res){
		header("location: alunos_lista.php");
	}else{
		header("location: alunos_lista.php?erro=erro na atualização");		
	}



?>