    <header>
      <!-- Fixed navbar -->
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <div class="dropdown">
              <a class="btn btn-dark dropdown
              dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Cadastros</a>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <a class="dropdown-item" data-toggle="modal" data-target="#CadUsuario">Usuário</a>
                <a class="dropdown-item" data-toggle="modal" data-target="#CadVolume">Volume</a>
              </div>
            </div>
            <li class="nav-item">
              <a class="nav-link" href="#">Retiradas <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Usuário <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
             <a class="nav-link" href="Views/sair.php">Sair</a>
           </li>        
         </ul>
         <form class="form-inline mt-3 mt-md-0">
          <a class="cest btn btn-dark">
            <img class='cest' src="Content/dist/img/icon/baseline_shopping.png" alt="Cesta de Compras" width="30px">
          </a>
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <div class="dropdown">
            <a class="btn btn-dark dropdown
            dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Tipo de Usuário </a>

            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
              <a class="dropdown-item" href="#">Professor</a>
              <a class="dropdown-item" href="#">Aluno</a>
              <a class="dropdown-item" href="#">Comunidade</a>
            </div>
          </div>
          <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Pocurar</button>
        </form>
      </div>
    </nav>
  </header>

  <!--Modal Usuario-->
  <div class="modal fade" id="CadUsuario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header card-header">
          <h5 class="modal-title" id="exampleModalLabel">Cadastro de Usuário</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <!--Cad Usu-->
          <form id="formCadastroUsuario">
            <div class="loader"></div>
            <div class="esconder" >
              <div class="container cadastroUsu">
                <div id="divMensagem"></div>
                <div class="row">
                  <div class="form-group col-md-8">
                    <label for="InputNomeUsu">Nome do Usuário</label>
                    <input name="InputNomeUsu" type="text" class="form-control" id="InputNomeUsu" placeholder="Digite o Nome">
                  </div>
                  <div class="form-group col-md-4">
                    <label for="inputTipoUsu">Tipo de Usuário</label>
                    <select name="InputTipoUsu" id="inputTipoUsu" class="form-control">
                      <option value="ST" >Escolha o Tipo</option>
                      <option value="P" >Professor</option>
                      <option value="E" >Estudante</option>
                      <option value="C" >Comudade</option>
                    </select>
                  </div>
                </div>  
              </div>
              <div class="form-group">
                <label for="InputPasswordUsu">Senha</label>
                <input name="InputPasswordUsu" type="password" class="form-control" id="InputPasswordUsu" placeholder="Senha">
              </div>
            </div>
            <!--Cad Usu-->                
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-dark">Cadastrar</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!--Modal Volume-->
  <div class="modal fade" id="CadVolume" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div id="divMensagem"></div>
        <div class="modal-header card-header">
          <h4 class="modal-title" id="exampleModalLabel">Cadastro de Volume</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form id="formCadastroVolume">
          <div class="modal-body">     
            <div class="loader"></div>
            <div class="esconder" >
              <div class="container cadastroUsu">                         
                <div class="row">          
                  <div class="form-group col-md-8 ">
                    <label for="InputNomeVol">Nome do Volume</label>
                    <input name="InputNomeVol" type="text" class="form-control" id="InputNomeVol" placeholder="Digite o Nome do Volume ">
                  </div>
                  <div class="form-group col-md-4">
                    <label for="inputTipoVol">Tipo de Volume</label>
                    <select name="inputTipoVol" id="inputTipoVol" class="form-control">
                      <option value="" >Escolha o Tipo</option>
                      <option value="L" >Livros</option>
                      <option value="P">Periodicos</option>
                    </select>
                  </div>

                </div>
                <div class="form-group">
                  <label for="inputDescricao">Descrição</label>
                  <textarea name="inputDescricao" class="form-control" id="inputDescricao" rows="5"></textarea>
                </div> 
                
              </div>
              
              
              <div class="custom-file" id="customFile">
                <input type="file" class="custom-file-input" id="inputFile" name="inputFile"aria-describedby="fileHelp">
                <label class="custom-file-label" id="labelFile" for="exampleInputFile">
                  Nenhum arquivo selecionado
                </label>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <div class="esconder" >
              <button type="submit" class="btn btn-dark">Cadastrar</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>

  <script type="text/javascript">
    $('.custom-file-input').on('change',function(){
      var fileName = $(this).val();

      $('#labelFile').html(fileName);
    })
  </script>