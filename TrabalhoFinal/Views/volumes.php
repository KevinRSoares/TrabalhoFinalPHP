<div class="container">
    <div class="row">
        <div class="col-scol-lg-2 col-md-3 col-sm-12">
            <div class="card" style="width: 100%;">
                <div class="card-header">
                    <img class="card-img-top" src="Content/dist/img/imgVolumes/teste.png" alt="Card image cap">
                </div>
                <div class="card-body">
                    <p class="card-text ">Descrição Volume,Descrição Volume,Descrição Volume,Descrição Volume.</p>
                    <div class="text-center">
                        <a href="#" class="btn btn-primary">+</a>
                    </div>
                </div>
            </div>                
        </div>
        <div class="col-scol-lg-2 col-md-3 col-sm-12">
            <div class="card" style="width: 100%;">
                <div class="card-header">
                    <img class="card-img-top" src="Content/dist/img/imgVolumes/teste.png" alt="Card image cap">
                </div>
                <div class="card-body">
                    <p class="card-text ">Descrição Volume,Descrição Volume,Descrição Volume,Descrição Volume.</p>
                    <div class="text-center">
                        <a href="#" class="btn btn-primary">+</a>
                    </div>
                </div>
            </div>                
        </div>                      
        <div class="col-scol-lg-2 col-md-3 col-sm-12">
            <div class="card" style="width: 100%;">
                <div class="card-header">
                    <img class="card-img-top" src="Content/dist/img/imgVolumes/teste.png" alt="Card image cap">
                </div>
                <div class="card-body">
                    <p class="card-text ">Descrição Volume,Descrição Volume,Descrição Volume,Descrição Volume.</p>
                    <div class="text-center">
                        <a href="#" class="btn btn-primary">+</a>
                    </div>
                </div>
            </div>                
        </div>
        <div class="col-scol-lg-2 col-md-3 col-sm-12">
            <div class="card" style="width: 100%;">
                <div class="card-header">
                    <img class="card-img-top" src="Content/dist/img/imgVolumes/teste.png" alt="Card image cap">
                </div>
                <div class="card-body">
                    <p class="card-text ">Descrição Volume,Descrição Volume,Descrição Volume,Descrição Volume.</p>
                    <div class="text-center">
                        <a href="#" class="btn btn-primary">+</a>
                    </div>
                </div>
            </div>                
        </div>
    </div>
</div>
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
        <form>
            <div class="container cadastroUsu">
                
                    <div class="row">
                        <div id="divMensagem"></div>
                        <div class="form-group col-md-8">
                            <label for="InputNomeUsu">Nome do Usuário</label>
                            <input name="InputNomeUsu" type="text" class="form-control" id="InputNomeUsu" placeholder="Digite o Nome">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputTipoUsu">Tipo de Usuário</label>
                            <select name="InputTipoUsu" id="inputTipoUsu" class="form-control">
                                <option value="" >Escolha o Tipo</option>
                                <option value="P" >Professor</option>
                                <option value="E" >Estudante</option>
                                <option value="C" >Comudade</option>
                            </select>
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
        <form>
            <div class="modal-body">      
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
        </div>
        <div class="modal-footer">
            <button type="submit" class="btn btn-dark">Cadastrar</button>
        </div>
        </form>
    </div>
    </div>
</div>