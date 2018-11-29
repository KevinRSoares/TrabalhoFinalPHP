<?php
    if(!isset($_GET['page']))
        $page = "Jogo";
    else
        $page = $_GET['page'];

    switch($page)
    {
        case 'Jogo':
            $script = "jogo";
            $titulo = "FastMind";
            $jogo = " active";
            break;     
        case 'Login':
            default:
            $script = "login";
            $titulo = "Login";
            $login = " active";
            break;
        case 'Admin':
            $script = "admin";
            $titulo = "Admin";
            $admin = " active";
            break;
        case 'Ranking':
            $script = "ranking";
            $titulo = "Ranking";
            $rankingn = " active";
            break;       
        case 'Perfil':
            $script = "perfil";
            $titulo = "Perfil";
            $perfil = " active";
            break;                        
        case 'Sobre':
            $script = "sobre";
            $titulo = "Sobre";
            $sobre = " active";
            break;   
        case 'Esqueci':
            $script = "esqueci";
            $titulo = "Esqueci";
            break;    
        case 'Volumes':
            $script = "volumes";
            $titulo = "Volumes";
            break;  
        case 'Retiradas':
            $script = "retiradas";
            $titulo = "Retiradas";
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