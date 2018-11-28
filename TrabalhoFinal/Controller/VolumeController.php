<?php
    include_once '../Aplicacao/VolumeAplicacao.php';
    include_once '../Dominio/Volume.class.php';

    $erros = array(); //Para armazenar os erros
    $form_data = array(); //Para enviar os dados de volta à página

    $erros['campos'] = "";
    $tiUsu = "";
    $operacao = $_POST['operacao'];
    $file = $_POST['arquivo'];

    $aplicacao = new VolumeAplicacao();

    switch($operacao)
    {
        case "AdicionarVolume":
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
            break;
        case "SalvarImagem":
            if ( 0 < $_FILES['file']['error'] ) {
                echo 'Erro: ' . $_FILES['file']['error'] . '<br>';
            }
            else {
                $target = "../Content/dist/img/imgVolumes/";
                $target = $target . basename( $file['file']['name']);
                $Filename=basename( $file['file']['name']);
                if(move_uploaded_file($file['file']['tmp_name'], $target)) {
                    echo "O arquivo ". basename( $file['file']['name']). " foi enviado";
                } else {
                    echo "Ocorreu um problema no envio do arquivo.";
                }
            }
            break;
    }    

    
    echo json_encode($form_data);
?>