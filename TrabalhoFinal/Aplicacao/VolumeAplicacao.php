<?php    
    require_once("Connection.class.php");

    class VolumeAplicacao
    {    

        public function AdicionarVolume($Volume)
        {
            $connection = new Connection();
            $conn = $connection->getConn();
            
            $stmt = $conn->prepare("call cadastra_volume(?,?,?,?,?)");
            //i   corresponding variable has type integer
            //d   corresponding variable has type double
            //s   corresponding variable has type string
            //b   corresponding variable is a blob and will be sent in packets
            $stmt->bind_param('sssis',$Volume->nome, $Volume->descricao, $Volume->tipo, $Volume->quantidade,$Volume->arquivo);
            //NoUsu EmUsu DtNaUsu NiUsu SeUsu TiUsu 
            // 's' especifica o tipo => 'string'
            $stmt->execute();

            if ($stmt->error) {
                $erros['nome'] = "Erro: " . $conn->error;
                $form_data['success'] = false;
                $form_data['erros']  = $erros; 
                
            } else {
                $form_data['success'] = true;
                $form_data['posted'] = "Volume Cadastrado com sucesso!";
            /*    $result = $stmt->get_result();
                if ($result->num_rows > 0) {
                    if($row = $result->fetch_assoc()) {
                        if($row["Retorno"] == 1){
                            $form_data['success'] = true;
                            $form_data['posted'] = "Volume Cadastrado com sucesso!";
                        }                     
                    }    
                }   */         
            }

            $conn->close();	

            echo json_encode($form_data);
            die();
        }
    }
?>