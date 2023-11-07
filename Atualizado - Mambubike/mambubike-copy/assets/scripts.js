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
})


