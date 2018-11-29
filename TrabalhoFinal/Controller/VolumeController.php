<?php
    include_once '../Aplicacao/VolumeAplicacao.php';
    include_once '../Dominio/Volume.class.php';

    $erros = array(); //Para armazenar os erros
    $form_data = array(); //Para enviar os dados de volta à página

    $erros['campos'] = "";
    $operacao = $_POST['operacao'];
    $aplicacao = new VolumeAplicacao();

    switch($operacao)
    {
        case "AdicionarVolume":
            if (empty($_POST['inputDescricao'])){
                $erros['campos'] = 'Preencha campo descrição!!!';
            }
            if (empty($_POST['InputNomeVol'])){
                $erros['campos'] = 'Preencha campo Nome!!!';
            }
            if($_POST['inputTipoVol'] == 'ST'){
                $erros['campos'] = 'Selecione um tipo de Volume!!!';
            }               
            if (!empty($erros['campos'])) { //Se houve erros
                $form_data['success'] = false;
                $form_data['erros'] = $erros;
            }else{
                $Vol = new Volume();
                $Vol->nome = $_POST['InputNomeVol'];
                $Vol->descricao = $_POST['inputDescricao'];
                $Vol->quantidade = 0;
                $Vol->tipo = $_POST['inputTipoVol'];
                $Vol->arquivo = $_POST['arquivo'];
                $form_data = $aplicacao->AdicionarVolume($Vol);
            }            
            break;
        case "buscaVolumes":
            if (empty($_POST['inputDescricao'])){
                $erros['campos'] = 'Preencha campo descrição!!!';
            }
            if (empty($_POST['InputNomeVol'])){
                $erros['campos'] = 'Preencha campo Nome!!!';
            }
            if($_POST['inputTipoVol'] == 'ST'){
                $erros['campos'] = 'Selecione um tipo de Volume!!!';
            }               
            if (!empty($erros['campos'])) { //Se houve erros
                $form_data['success'] = false;
                $form_data['erros'] = $erros;
            }else{
                $Vol = new Volume();
                $Vol->nome = $_POST['InputNomeVol'];
                $Vol->descricao = $_POST['inputDescricao'];
                $Vol->quantidade = 0;
                $Vol->tipo = $_POST['inputTipoVol'];
                $Vol->arquivo = $_POST['arquivo'];
                $form_data = $aplicacao->AdicionarVolume($Vol);
            }            
            break;            
       
    }    
    echo json_encode($form_data);
?>