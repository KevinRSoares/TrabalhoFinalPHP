<?php
    include_once '../Aplicacao/VolumeAplicacao.php';
    include_once '../Dominio/Volume.class.php';

    $erros = array(); //Para armazenar os erros
    $form_data = array(); //Para enviar os dados de volta à página

    $erros['campos'] = "";
    $tiUsu = "";

    $aplicacao = new VolumeAplicacao();

    if (empty($_POST['inputDescricao']){
        $erros['campos'] = 'Preencha campo descrição!!!';
    }
    if (empty($_POST['inputNome']){
        $erros['campos'] = 'Preencha campo Nome!!!';
    }
    if($_POST['inputTipVol'] == 'ST'){
        $erros['campos'] = 'Selecione um tipo de Volume!!!';
    }               
    if (!empty($erros['campos'])) { //Se houve erros
        $form_data['success'] = false;
        $form_data['erros'] = $erros;
    }else{
        $Vol = new Volume();
        $Vol->nome = $_POST['inputNome'];
        $Vol->descricao = $_POST['inputDescricao'];
        $Vol->quantidade = $_POST['inputQtd'];
        $Vol->tipo = $_POST['inputTipVol'];
        $form_data = $aplicacao->AdicionarVolume($Vol);
    }
    echo json_encode($form_data);
?>