<?php

    if ( 0 < $_FILES['file']['error'] ) {
        echo 'Erro: ' . $_FILES['file']['error'] . '<br>';
    }

    else {
        $target = "../Content/dist/img/imgVolumes/";
		$target = $target . basename( $_FILES['file']['name']);

		$Filename=basename( $_FILES['file']['name']);

	
		if(move_uploaded_file($_FILES['file']['tmp_name'], $target)) {
		    
		    echo "O arquivo ". basename( $_FILES['file']['name']). " foi enviado";
		    
		    //INSERE NO MYSQL O CAMINHO E ID DO JOGADOR

		} else {
		   
		    echo "Ocorreu um problema no envio do arquivo.";
		}
    }

?>