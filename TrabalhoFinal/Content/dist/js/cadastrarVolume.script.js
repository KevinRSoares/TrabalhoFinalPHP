$( document ).ready(function() {
	// Variável para guardar o request
	var request;
	$('.loader').hide();//AQUI
	// Bind da função de submit do nosso formulári
	
	$("#formCadastroVolume").submit(function(event){
		$('.esconder').hide();//AQUI
		$('.loader').show();//AQUI
		//Não deixa que o POST default seja acionado
		event.preventDefault();

		//Cancelando qualquer request pendente
		if (request) {
			request.abort();
		}
		
		//Limpo as mensagens
		$(".divMensagem").empty();

		var file_data = $('#inputFile').prop('files')[0];   
		var form_data = new FormData();                  
		form_data.append('file', file_data);                     
		$.ajax({
			url: 'Aplicacao/UploadAplicacao.php', 
			dataType: 'text',  
			cache: false,
			contentType: false,
			processData: false,
			data: form_data,                         
			type: 'post'
		});
		
		//variáveis locais
		var $form = $(this);

		//Vamos selecionar e armazenar todos os cmapos do formulário para operações com eles
		var $inputs = $form.find("input, select, button, textarea");

 

		//Vamos serializar o formulário]
		var quantidade = $('#q0').val();
		var serializedData = $form.serialize();
		serializedData+="&inputQuantidade="+quantidade+"&arquivo="+file_data.name+"&operacao=AdicionarVolume";

		//Vamos desabilitar os inputs durante a requisição para não deicar mandar várias seguidas
		// OBS: N[os desabilitamos os campos depois de serializar os dados
		$inputs.prop("disabled", true);

		//Vamos mandar a requisição
		request = $.ajax({
			url: "Controller/VolumeController.php",
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
					$('.divMensagem').append('<div class="alert alert-success" role="alert">' + response.posted + '</div>');
					$('#InputNomeVol').val('');
					$('#inputDescricao').val('');
					$('#inputTipoVol').val('');
					$('#q0').val('1');
			}
			$('.esconder').show();
			$('.loader').hide();//AQUI
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
});

$("#Volumes").ready(function(event){
	var request;

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
	serializedData+="&operacao=buscaVolumes"

	//Vamos desabilitar os inputs durante a requisição para não deicar mandar várias seguidas
	// OBS: N[os desabilitamos os campos depois de serializar os dados
	$inputs.prop("disabled", true);

	//Vamos mandar a requisição
	request = $.ajax({
		url: "Controller/VolumeController.php",
		type: "post",
		data: serializedData
	});
	
	// Callback para ser chamado quando ocorre o sucesso
	request.done(function (response, textStatus, jqXHR){

		var response = $.parseJSON(response);
		console.log(response);
		if (!response.success) { //Se deu alguma mensagem de erro				
				$('#divMensagem').append('<div class="alert alert-danger" role="alert">' + response.erros + '</div>');
		}
		else {
				$("#volumes").empty();
				k = 0;
				for (i in response.volumes) {
					var html = '<div class="col-scol-lg-2 col-md-3 col-sm-12">            <div class="card" style="width: 100%;">                <div class="card-header">                   <img class="card-img-top" src="Content/dist/img/imgVolumes/'+response.volumes[i].arquivo+'" alt="Card image cap" height="300px">                </div>                <div class="card-body">                    <h5 class="card-title">'+response.volumes[i].nome+'</h5>                    <p class="card-text " >'+response.volumes[i].descricao+'</p>                </div>                <div class="card-footer">                    <div class="text-center">                        <a href="#" class="btn btn-primary">+</a>                    </div>                </div>            </div>                        </div>    ';
					if(k == 3){
						html = '<div class="row">'+html+'</div>';
						k = 0;
					}
					$('#volumes').append(html);	
					console.log(html);
				}	 	
		}
		$('.esconder').show();
		$('.loader').hide();//AQUI
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