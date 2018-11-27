<!-- Formulário de cadastro de Volumes -->

<div class="container cadastroUsu">
	<form>
		<div class="row">
			<div class="form-group col-md-8">
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
		<button type="submit" class="btn btn-dark">Cadastrar</button>
	</form>
</div>

<!--

Formulário de cadastro Usuário


<div class="container cadastroUsu">
	<form>
		<div class="row">
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
		<button type="submit" class="btn btn-dark">Cadastrar</button>
	</form>
</div>
-->