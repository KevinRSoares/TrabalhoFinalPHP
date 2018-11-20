<?php
	session_start();
	$_SESSION['codusu'] = null;
	$_SESSION['nomusu'] = null;
	$_SESSION['tipusu'] = null;	
	header('location:../index.php?page=Login');
?>