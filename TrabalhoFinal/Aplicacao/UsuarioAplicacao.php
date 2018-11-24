<?php    
    require_once("Connection.class.php");

    class UsuarioAplicacao
    {    

        public function AdicionarUsuario($Usuario)
        {
            $connection = new Connection();
            $conn = $connection->getConn();
            
            $stmt = $conn->prepare("call cadastra_usuario(?, ?, ?)");
            //i   corresponding variable has type integer
            //d   corresponding variable has type double
            //s   corresponding variable has type string
            //b   corresponding variable is a blob and will be sent in packets
            $stmt->bind_param('sss', $Usuario->nome, $Usuario->tipo, $Usuario->senha);
            //NoUsu EmUsu DtNaUsu NiUsu SeUsu TiUsu 
            // 's' especifica o tipo => 'string'
            $stmt->execute();

            if ($stmt->error) {
                $erros['nome'] = "Erro: " . $conn->error;
                $form_data['success'] = false;
                $form_data['erros']  = $erros; 
                
            } else {
                $form_data['success'] = true;
                $form_data['posted'] = "Usuario Cadastrado com sucesso!";
            /*    $result = $stmt->get_result();
                if ($result->num_rows > 0) {
                    if($row = $result->fetch_assoc()) {
                        if($row["Retorno"] == 1){
                            $form_data['success'] = true;
                            $form_data['posted'] = "Usuario Cadastrado com sucesso!";
                        }                     
                    }    
                }   */         
            }

            $conn->close();	

            echo json_encode($form_data);
            die();
        }

        public function VerificaLogin($nome, $senha)
        {
            $connection = new Connection();
            $conn = $connection->getConn();

            $sql = "SELECT * FROM usuario Where nomusu = ? and senusu = md5(?)";
            //Select CodUsu,EmaUsu ,NomUsu , SenUsu ,TipUsu from usuario Where EmaUsu = ? and SenUsu = md5(?)
            $stmt = $conn->prepare($sql);
            $stmt->bind_param('ss', $nome, $senha); // 's' especifica o tipo => 'string'

            $stmt->execute();
            if ($stmt->error) {
                $erros['nome'] = "Erro: " . $conn->error;
                $form_data['success'] = false;
                $form_data['erros']  = $erros; 
                
            } else {
                $result = $stmt->get_result();
                if ($result->num_rows > 0) {
                    if($row = $result->fetch_assoc()) {

                        session_start([
                            'cookie_lifetime' => 86400,
                        ]);
                        $_SESSION['codusu'] = $row["codusu"];
                        $_SESSION['nomusu'] = $row["nomusu"];
                        $_SESSION['tipusu'] = $row["tipusu"];
                        
                        $form_data['success'] = true;
                        $form_data['tipUsu'] = $row["tipusu"];
                        $form_data['posted'] = "Login efetuado com sucesso!";
                    }
                    
                } 
                else
                {
                    $erros['nome'] = 'usuário ou senha inválidos';
                    $form_data['success'] = false;
                    $form_data['erros']  = $erros;
                }
            }
            $conn->close();	

            echo json_encode($form_data);
            die();
        }
    }
?>