<!--<div class="container">
	
	<h1>Cadastro de jogador</h1>
	<div class='formCadastro'>	
	<div id="divMensagem"></div>
	<form class='container-fluid formulario' id="formCadastroUsuario">
		
		<div class="form-group ">
			<small id="emailHelp" class="form-text small">O email será utilizado como usuário do jogo</small>
			<input type="email" class="form-control" id="inputEmail" name="inputEmail" aria-describedby="emailHelp" placeholder="Informe o seu email">
		</div>
		
		<div class="form-group">
			<small id="nomeHelpHelp" class="form-text small">O seu nome será utilizado para motivos administrativos</small>          
			<input type="text" class="form-control" id="inputNome" name="inputNome" aria-describedby="nomeHelp" placeholder="Informe o seu nome completo">
		</div>
		<div class="form-group">
			<small id="apelidoHelp" class="form-text small">Seu apelido será utilizado para identificar você ao jogo</small>
			<input type="text" class="form-control" id="inputApelido" name="inputApelido" aria-describedby="apelidoHelp" placeholder="Informe o seu Nick de Usuário">
		</div>
		<div class="form-group">
			<small id="apelidoHelp" class="form-text small">Digite sua data de Nascimento</small>
			<input type="date" class="form-control" id="inputDtNascimento" name="inputDtNascimento" placeholder="Informe sua data de nascimento">
		</div>
		<div class="form-group">
			<small id="apelidoHelp" class="form-text small">Digite uma senha</small>          
			<input type="password" class="form-control" id="inputSenha" name="inputSenha" placeholder="Informe uma senha">
		</div>
		<?php
			if(isset ($_SESSION['email']) == true and ($_SESSION['tipUsu']) == "A"){
		?>
			<div class="form-group">
				<div class="custom-control custom-checkbox mr-sm-2">
					<input type="checkbox" class="form-check-label" id="inputTipUsu" name="inputTipUsu" checked	>
					<label class="form-check-label" for="customControlAutosizing">Administrador</label>
				</div>  		  
			</div>
		<?php
			}
		?>
		<button type="submit" class="btn btn-outline-light" alt="Botão Registrar" title="Clique aqui para registar um novo usuário">Registrar</button>
		<a  href="index.php?page=Login" class="btn btn-outline-light" alt="Botão para voltar ao login" title="Clique aqui para voltar a página de login">Login </a>
	</form>
</div>
</div>-->