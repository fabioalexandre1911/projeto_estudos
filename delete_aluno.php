<?php  

	include_once 'php/conexao.php';
	include_once 'php/funcoes.php';

	
	# Inserndo os dados no banco
	$res = delete("alunos", array("id_aluno"=>$_POST['id_aluno']));

	if($res){
		header("location: alunos_lista.php");
	}else{
		header("location: alunos_lista.php?erro=erro no cadastro");		
	}
	

	//var_dump($_POST);

?>