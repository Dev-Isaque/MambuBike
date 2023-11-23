$(() => {

    var BRMaskBehavior = function (val) {
        return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
    },
    spOptions = {
        onKeyPress: function(val, e, field, options) {
            field.mask(BRMaskBehavior.apply({}, arguments), options);
        }
    }

	$('.telefone').mask(BRMaskBehavior, spOptions)
	$('.toLowerCase').on('input', function() {
		this.value = this.value.toLowerCase()
	})

	'use strict'

	var forms = document.querySelectorAll('.needs-validation')

	Array.prototype.slice.call(forms)
		.forEach(function (form) {
			form.addEventListener('submit', function (event) {
				if (!form.checkValidity()) {
				event.preventDefault()
				event.stopPropagation()
				}

				form.classList.add('was-validated')
			}, false)
		})

	/*
	$('#radioDiversidadeFunc1').on('change', function(){
		if(this.checked){
			$("#idDiversidadeFunc").fadeIn(300)
			$("#idDiversidadeFunc").focus()
		}else{
			$("#idDiversidadeFunc").hide().fadeOut()
			//$("#idDiversidadeFunc").fadeOut()
		}
	})

	$('#radioTipoTransporte4').on('change', function(){
		if(this.checked){
			$("#ciclistas").fadeIn(300)
			$("#ciclistas").focus()
		}else{
			$("#ciclistas").fadeOut()
		}
	})
	*/

		// --Diversidade funcional--
		// Selecione os botões "Sim" e "Não" por ID
		var simButtonDiversidadeFunc = $("#radioDiversidadeFunc1");
		var naoButtonDiversidadeFunc = $("#radioDiversidadeFunc2");
		// Selecione a div com a classe "sesim3"
		var sesim3Div = $(".sesim3");

		// Função para mostrar ou ocultar a div com base na seleção dos botões
		function toggleDiv() {
			if (simButtonDiversidadeFunc.is(":checked")) {
				// Se o botão "Sim" estiver marcado, mostre a div
				sesim3Div.css("display", "block");
				$("#txtDiversidadeFunc").focus();
			} else {
				// Caso contrário, oculte a div
				sesim3Div.css("display", "none");
				$("#txtDiversidadeFunc").val("");
			}
		}

		// Adicione um ouvinte de evento para ambos os botões (quando houver uma mudança)
		simButtonDiversidadeFunc.change(toggleDiv);
		naoButtonDiversidadeFunc.change(toggleDiv);

		// Chame a função inicialmente para garantir que a div seja ocultada se necessário
		toggleDiv();
		// --Diversidade funcional--

		// -- Questão 1 - Bicicleta
		/*
		$('input[name="radioTipoTransporte"]').click(function () {
			if ($(this).val() === 'Bicicleta') {
				$("#ciclistas").fadeIn(300)
			}else{
				if ($("#chkTransportesUtiliza2").val() != 'Bicicleta' && $("#radioTranspMaisUtiliza").val() != 'Bicicleta') {
					$("#ciclistas").fadeOut()
				}
			}
		})
		*/

		// outros
		$('input[name="radioTipoTransporte"]').click(function () {
			if ($(this).val() === 'Outros') {
				$("#txtTipoTransporteOutros").fadeIn(300)
				$("#txtTipoTransporteOutros").focus()
			}else{
				$("#txtTipoTransporteOutros").val("")
				$("#txtTipoTransporteOutros").fadeOut()
			}
		})

		// -- Questão 2 - focus
		$('input[name="radioSenteSeguro"]').click(function () {
			$("#txtSenteSeguro").focus()
		})

		// -- Questão 3 - Bicicleta
		/*
		$('#chkTransportesUtiliza2').on('change', function(){
			if (this.checked) {
				$("#ciclistas").fadeIn(300)
				console.log("checked!!!!")
			}else{
				if ($("#radioTipoTransporte").val() != 'Bicicleta' && $("#radioTranspMaisUtiliza").val() != 'Bicicleta') {
					$("#ciclistas").fadeOut()
				}
			}
		})
		*/

		// outros
		$('#chkTransportesUtiliza13').on('change', function(){
			if(this.checked){
				$("#txtTransportesUtilizaOutros").fadeIn(300)
				$("#txtTransportesUtilizaOutros").focus()
			}else{
				$("#txtTransportesUtilizaOutros").val("")
				$("#txtTransportesUtilizaOutros").fadeOut()
			}
		})

		// -- Questão 4 - focus
		$('input[name="radioSenteSeguroTransp"]').click(function () {
			$("#txtSenteSeguroTransp").focus()
		})

		// -- Questão 7 - outros
		/*
		$('input[name="radioTranspMaisUtiliza"]').click(function () {
			if ($(this).val() === 'Bicicleta') {
				$("#ciclistas").fadeIn(300)
			}else{
				$("#ciclistas").fadeOut()
			}
		})
		*/

		// outros
		$('input[name="radioTranspMaisUtiliza"]').click(function () {
			if ($(this).val() === 'Outros') {
				$("#txtTranspMaisUtiliza").fadeIn(300)
				$("#txtTranspMaisUtiliza").focus()
			}else{
				$("#txtTranspMaisUtiliza").val("")
				$("#txtTranspMaisUtiliza").fadeOut()
			}
		})

		// -- Questão B
		$('#chkBicicletaMotivoViagem').on('change', function(){
			if(this.checked){
				$("#txtBicicletaMotivoViagemOutro").fadeIn(300)
				$("#txtBicicletaMotivoViagemOutro").focus()
			}else{
				$("#txtBicicletaMotivoViagemOutro").val("")
				$("#txtBicicletaMotivoViagemOutro").fadeOut()
			}
		})
		
		// -- Questão E
		$('#chkBicicletaMotivoUso7').on('change', function(){
			if(this.checked){
				$("#txtBicicletaMotivoUsoOutros").fadeIn(300)
				$("#txtBicicletaMotivoUsoOutros").focus()
			}else{
				$("#txtBicicletaMotivoUsoOutros").val("")
				$("#txtBicicletaMotivoUsoOutros").fadeOut()
			}
		})

		// -- Questão F
		$('#chkBicicletaDesafiosUso5').on('change', function(){
			if(this.checked){
				$("#txtBicicletaDesafiosUsoOutro").fadeIn(300)
				$("#txtBicicletaDesafiosUsoOutro").focus()
			}else{
				$("#txtBicicletaDesafiosUsoOutro").val("")
				$("#txtBicicletaDesafiosUsoOutro").fadeOut()
			}
		})

		// -- Questão H
		// Selecione os botões "Sim" e "Não" por ID
		var simButtonOcorrencia = $("#radioOcorrenciaAcidente1");
		var naoButtonOcorrencia = $("#radioOcorrenciaAcidente2");
		// Selecione as divs com a classe "sesim2"
		var sesim2Divs = $(".sesim2");

		// Função para mostrar ou ocultar as divs com base na seleção dos botões
		function toggleDivs() {
			if (simButtonOcorrencia.is(":checked")) {
				// Se o botão "Sim" estiver marcado, mostre as divs
				sesim2Divs.css("display", "block");
				$("#txtDescricaoOcorrencia").focus();
			} else {
				// Caso contrário, oculte as divs
				sesim2Divs.css("display", "none");
				$("#txtDescricaoOcorrencia").val("");
				$("#txtLocalOcorrencia").val("");
			}
		}

		// Adicione um ouvinte de evento para ambos os botões (quando houver uma mudança)
		simButtonOcorrencia.change(toggleDivs);
		naoButtonOcorrencia.change(toggleDivs);

		// Chame a função inicialmente para garantir que as divs sejam ocultadas se necessário
		toggleDivs();
		// -- Fim Questão H
		
		// -- Questão I
		$('#chkUsoOutroTransp13').on('change', function(){
			if(this.checked){
				$("#txtUsoOutrosTransp").fadeIn(300)
				$("#txtUsoOutrosTransp").focus()
			}else{
				$("#txtUsoOutrosTransp").val("")
				$("#txtUsoOutrosTransp").fadeOut()
			}
		})


		// -- Questão I
		// Selecione os botões "Sim" e "Não" por ID
		var simButton = $("#radioUsoAssociadaOutroTransp1")
		var naoButton = $("#radioUsoAssociadaOutroTransp2")
		// Selecione a div com a classe "sesim"
		var sesimDiv = $(".sesim")

		// Adicione um ouvinte de evento para ambos os botões (quando houver uma mudança)
		simButton.change(function() {
			if (simButton.is(":checked")) {
				// Se o botão "Sim" estiver marcado, mostre a div
				sesimDiv.css("display", "block")
			} else {
				// Caso contrário, oculte a div
				sesimDiv.css("display", "none")
			}
		})

		naoButton.change(function() {
			if (naoButton.is(":checked")) {
				// Se o botão "Não" estiver marcado, oculte a div
				sesimDiv.css("display", "none")
			}
		})
		// -- Fim Questão I

})