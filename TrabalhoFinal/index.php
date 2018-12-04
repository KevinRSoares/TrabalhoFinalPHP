<?php
    if(!isset($_GET['page']))
        $page = "Jogo";
    else
        $page = $_GET['page'];

    switch($page)
    {    
        case 'Login':
            default:
            $script = "login";
            $titulo = "Login";
            $login = " active";
            break;
        case 'Volumes':
            $script = "volumes";
            $titulo = "Volumes";
            break;  
        case 'Retiradas':
            $script = "retiradas";
            $titulo = "Retiradas";
            break;  
        case 'Usuarios':
            $script = "usuarios";
            $titulo = "Usuarios";
            break;            
        }
?>

<!DOCTYPE html>
<html>
	<head>
		<?php include 'Views/header.php' ?>
		<title>Nome do Sistema - <?php echo $titulo ?></title>
        <script src="Content/dist/js/<?php echo $script ?>.script.js"></script>    
        <?php
            if($script == 'volumes'){
        ?>
            <script src="Content/dist/js/cadastrarUsuario.script.js"></script>    
            <script src="Content/dist/js/cadastrarVolume.script.js"></script>
        <?php
            }
        ?>            
	</head>
	<body>
        <?php 
            include 'Views/verificaLogin.php';
            if($page != 'Login'){
                include 'Views/navbar.php';
            }
            include 'Views/'.$script.'.php';
        ?>
        </div>
        <?php
            include 'Views/footer.php';
        ?>      
	</body>
</html>