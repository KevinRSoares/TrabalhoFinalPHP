<?php
    include_once '../Dominio/Volume.class.php';
    //$data = array();
    session_start();
    $operacao = $_POST['operacao'];
    $volumes = [];
    if($operacao == "adicionaItenRetirada"){
            $temNaFila = 0;
            $Vol = new Volume();
            $volumes = [];
            foreach($_SESSION['fila'] as $keyItem => $itemValue){
               
                $Vol = new Volume();
                $Vol->codigo = $keyItem['codigo'];
                $Vol->nome = $keyItem['nome'];
                if($keyItem['codigo'] == $_POST['idvolume']){
                    $temNaFila == 1;    
                }
                array_push($volumes,$Vol);
            }
            if($temNaFila == 0){
                $Vol = new Volume();
                $Vol->codigo = $_POST['idvolume'];
                $Vol->nome = $_POST['nomeVolume'];                
                array_push($volumes,$Vol);
            }
            $_SESSION['fila'] = [];
            array_push($_SESSION['fila'],$volumes);
            
    }               
    echo json_encode($_SESSION['fila']);
?>