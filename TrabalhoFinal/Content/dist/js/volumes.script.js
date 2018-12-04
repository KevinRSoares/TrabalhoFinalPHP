$( document ).ready(function() {
	var request;
	var serializedData = "&operacao=buscaItens&idvolume=0&nomeVolume=''";
	request = $.ajax({
		url: "Controller/GeraFilaController.php",
		type: "post",
		data: serializedData
	});
	request.done(function (response, textStatus, jqXHR){

		var response = $.parseJSON(response);
		console.log(response);
		$("#itensretirada").empty();
        k = 0;
        for (i in response) {
			$('#itensretirada').append('<div class="row itcest">             <div class="col-sm-8">       <p class="d-none">                '+response[i].codigo+'              </p>        <div class="btn btn-light qtd">                '+response[i].nome+'              </div>                     </div>                   <div class="col-sm-4">               <div class="btn btn-dark">                <input class="btn btnRet  btn-dark" type="button" id="plus" value="-" onclick="process(-1,'+response[i].codigo+')" />                <input id="q'+response[i].codigo+'" name="quant" class="text" size="1" type="text" value="1" maxlength="5" />                <input class="btn btnRet btn-dark" type="button" min="1" id="minus" value="+" onclick="process(1,'+response[i].codigo+')">              </div>            </div>                 </div>  ');	
			$("#cesta").empty();
			$("#cesta").append('<img class="cest" src="Content/dist/img/icon/baseline_shopping_iten.png" alt="Cesta de Compras" width="30px"></img>)');
        }	 	
	});

	// Callback para ser chamado em caso de falha
	request.fail(function (jqXHR, textStatus, errorThrown){
		$('#divMensagem').appsend('<div class="alert alert-danger" role="alert">Erro ao enviar os dados</div>');
	});

	// Callback que será chamado sempre depois da requisição (mesmo que ocorra falaha ou sucesso)
	request.always(function () {
	});			
});	
function geraFila(idvolume,nomeVolume){
    var request;

	//Cancelando qualquer request pendente
	if (request) {
		request.abort();
	}
	
	//Limpo as mensagens
	$("#divMensagem").empty();
	
	//variáveis locais
	//Vamos serializar o formulário
	var serializedData = "&operacao=adicionaItenRetirada&idvolume="+idvolume+"&nomeVolume="+nomeVolume;

	//Vamos mandar a requisição
	request = $.ajax({
		url: "Controller/GeraFilaController.php",
		type: "post",
		data: serializedData
	});
	
	// Callback para ser chamado quando ocorre o sucesso
	request.done(function (response, textStatus, jqXHR){

		var response = $.parseJSON(response);
		console.log(response);
        $("#itensretirada").empty();
        k = 0;
        for (i in response) {
			$('#itensretirada').append('<div class="row itcest">             <div class="col-sm-8">       <p class="d-none">                '+response[i].codigo+'              </p>        <div class="btn btn-light qtd">                '+response.volumes[i].nome+'              </div>                     </div>                   <div class="col-sm-4">               <div class="btn btn-dark">                <input class="btn btnRet  btn-dark" type="button" id="plus" value="-" onclick="process(-1,'+response.volumes[i].codigo+')" />                <input id="q'+response.volumes[i].codigo+'" name="quant" class="text" size="1" type="text" value="1" maxlength="5" />                <input class="btn btnRet btn-dark" type="button" min="1" id="minus" value="+" onclick="process(1,'+response.volumes[i].codigo+')">              </div>            </div>                 </div>  ');	
			$("#cesta").empty();
			$("#cesta").append('<img class="cest" src="Content/dist/img/icon/baseline_shopping_iten.png" alt="Cesta de Compras" width="30px"></img>)');
        }	 	
	});

	// Callback para ser chamado em caso de falha
	request.fail(function (jqXHR, textStatus, errorThrown){
		$('#divMensagem').appsend('<div class="alert alert-danger" role="alert">Erro ao enviar os dados</div>');
	});

	// Callback que será chamado sempre depois da requisição (mesmo que ocorra falaha ou sucesso)
	request.always(function () {
	});		
}

$("#itensDeTerirada").submit(function(event){
	//Não deixa que o POST default seja acionado
	event.preventDefault();

	//Cancelando qualquer request pendente
	if (request) {
		request.abort();
	}
	
	//Limpo as mensagens
	$("#divMensagem").empty();
	
	//variáveis locais
	var $form = $(this);

	//Vamos selecionar e armazenar todos os cmapos do formulário para operações com eles
	var $inputs = $form.find("input, select, button, textarea");

	//Vamos serializar o formulário
	var serializedData = $form.serialize();
	serializedData+="&operacao=AdicionarUsuario"

	//Vamos desabilitar os inputs durante a requisição para não deicar mandar várias seguidas
	// OBS: N[os desabilitamos os campos depois de serializar os dados
	$inputs.prop("disabled", true);

	//Vamos mandar a requisição
	request = $.ajax({
		url: "Controller/UsuarioController.php",
		type: "post",
		data: serializedData
	});
	
	// Callback para ser chamado quando ocorre o sucesso
	request.done(function (response, textStatus, jqXHR){

		var response = $.parseJSON(response);
		console.log(response);
		if (!response.success) { //Se deu alguma mensagem de erro				
			if (response.erros.campos) {
				$('#divMensagem').append('<div class="alert alert-danger" role="alert">' + response.erros.campos + '</div>');
			}else{
				$('#divMensagem').append('<div class="alert alert-danger" role="alert">' + response.erros + '</div>');
			}		
		}
		else {
				$('#divMensagem').append('<div class="alert alert-success" role="alert">' + response.posted + '</div>');
		}
	});

	// Callback para ser chamado em caso de falha
	request.fail(function (jqXHR, textStatus, errorThrown){
		$('#divMensagem').append('<div class="alert alert-danger" role="alert">Erro ao enviar os dados</div>');
	});

	// Callback que será chamado sempre depois da requisição (mesmo que ocorra falaha ou sucesso)
	request.always(function () {
		//Habilitamos os campos
		$inputs.prop("disabled", false);
	});

});