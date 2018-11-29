$( document ).ready(function() {
	// Variável para guardar o request
	var request;
	$('.loader').hide();//AQUI
	// Bind da função de submit do nosso formulário

	
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

 

		//Vamos serializar o formulário
		var serializedData = $form.serialize();
		serializedData+="&arquivo="+file_data.name+"&operacao=AdicionarVolume";

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


/*
$("#formArquivo").on("submit", function(event){
        
	event.preventDefault();

	var file_data = $('#inputFile').prop('files')[0];   
	var form_data = new FormData();                  
	form_data.append('file', file_data);
	alert(form_data);                             
	$.ajax({
		url: 'upload.php', 
		dataType: 'text',  
		cache: false,
		contentType: false,
		processData: false,
		data: form_data,                         
		type: 'post',
		success: function(php_script_response){
			alert(php_script_response);
			$('#labelFile').html("Nenhum arquivo selecionado");
			$("#inputFile").val("");
		}
		});
	})*/