<?php 
	if((!isset ($_SESSION['nomusu']) == true) && $page != "Login" && $page != "Cadastrar" && $page != "Esqueci")
	{
		unset($_SESSION['nomusu']);
		header('location:index.php?page=Login');
	}else if((isset ($_SESSION['nomusu']) == true) && $page == "Login"){
		header('location:index.php?page=Volumes');
	}
?>