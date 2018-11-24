<?php
    include_once '../Aplicacao/UsuarioAplicacao.php';
    include_once '../Dominio/Usuario.class.php';

    $erros = array(); //Para armazenar os erros
    $form_data = array(); //Para enviar os dados de volta à página

    $erros['nome'] = "";
    $erros['senha'] = "";
    $erros['campos'] = "";
    $tiUsu = "";

    $aplicacao = new UsuarioAplicacao();

    if (empty($_POST['operacao'])) {
		$erros['operacao'] = 'Operacao não foi informada';
    }
    else
    {                
        $operacao = $_POST['operacao'];
        switch($operacao)
        {
            case "VerificarLogin":
                if (empty($_POST['inputNome'])) {
                    $erros['nome'] = 'Você deve informar um email';
                }
            
                if (empty($_POST['inputSenha'])) {
                    $erros['senha'] = 'Você deve informar uma senha';
                }

                $Senha = $_POST['inputSenha'];
                $Nome = $_POST['inputNome'];


                $form_data = $aplicacao->VerificaLogin($Nome, $Senha);
                break;
            case "AdicionarUsuario":
                if (empty($_POST['inputNome']) || empty($_POST['inputSenha'])){
                    $erros['campos'] = 'Preencha todos os Campos!!!';
                }
                if($_POST['inputTipUsu'] == 'ST'){
                    $erros['campos'] = 'Selecione um tipo de usuário!!!';
                }               
                if (!empty($erros['campos'])) { //Se houve erros
                    $form_data['success'] = false;
                    $form_data['erros'] = $erros;
                }else{
                    $jog = new Usuario();
                    $jog->nome = $_POST['inputNome'];
                    $jog->senha = $_POST['inputSenha'];
                    $jog->tipo = $_POST['inputTipUsu'];
                    $form_data = $aplicacao->AdicionarUsuario($jog);
                }
                break;
        }
    }

    echo json_encode($form_data);
?>