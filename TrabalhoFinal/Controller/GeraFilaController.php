<?php
    include_once '../Dominio/Volume.class.php';
    //$data = array();
    session_start();
    $operacao = $_POST['operacao'];
    $Vol = new Volume();
    if($operacao == "adicionaItenRetirada"){
            
            $temNaFila = 0;
            foreach ($_SESSION['fila'] as $value) {
                if($value['codigo'] == $_POST['idvolume']){
                    $temNaFila = 1;
                    break;
                }
            }
            if($temNaFila == 0){
                $Vol->codigo = $_POST['idvolume'];
                $Vol->nome = $_POST['nomeVolume'];
                array_push($_SESSION['fila'],$Vol);
            }
    }               
    echo json_encode($_SESSION['fila']);
?>