/* $(() => {

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
	
}) */

/* window.addEventListener("scroll", function() {
    var navbar = document.querySelector(".navbar");
    var section = document.querySelector(".header-home");

    if (section.getBoundingClientRect().bottom <= 0) {
      navbar.classList.add("bg-white");
    } else {
      navbar.classList.remove("bg-white");
    }
});
 */
//////////////// Menu Hamburguer ////////////////
$(document).ready(function() {
    // Quando a página carregar, verifique o tamanho da tela e ajuste a visibilidade
    toggleMenuVisibility();

    $("#btn-hamburguer").on("click", function() {
        $(".navbar-nav").slideToggle();
        $("#menu-icon").toggle();
        $("#close-icon").toggle();
    });

    $(window).resize(function() {
        toggleMenuVisibility();
    });
});

function toggleMenuVisibility() {
    if ($(window).width() < 995) {
        $(".navbar-nav").hide();
    } else {
        $(".navbar-nav").show();
    }
}

//////////////// Animação das Paginas ////////////////
// Inicialize o ScrollReveal
var animacao = ScrollReveal();

// Configuração para cards com animação debaixo para cima
animacao.reveal('.card-box-bottom', {
    duration: 600,
    distance: '40px',
    easing: 'ease-out',
    origin: 'bottom',
    reset: true,
    scale: 1,
    viewFactor: 0,
});

// Configuração para cards com animação à esquerda
animacao.reveal('.card-box-left', {
    duration: 600,
    distance: '100px',
    easing: 'ease-out',
    origin: 'left',
    reset: true,
    scale: 1,
    viewFactor: 0,
});

// Configuração para cards com animação à direita
animacao.reveal('.card-box-right', {
    duration: 600,
    distance: '100px',
    easing: 'ease-out',
    origin: 'right',
    reset: true,
    scale: 1,
    viewFactor: 0,
});

// Use afterReveal para aplicar a animação aos itens dentro dos cards
function animacaoTextBottom() {
    animacao.reveal('.card-itens-bottom', {
        duration: 500,
        scale: 1,
        distance: '20px',
        origin: 'bottom',
        reset: true,
        easing: 'ease-out',
        viewFactor: 1,
    }, 75);
}

function animacaoTextLeft() {
    animacao.reveal('.card-itens-left', {
        duration: 500,
        scale: 1,
        distance: '20px',
        origin: 'left',
        reset: true,
        easing: 'ease-out',
        viewFactor: 1,
    }, 75);
}

function animacaoTextRight() {
    animacao.reveal('.card-itens-right', {
        duration: 500,
        scale: 1,
        distance: '20px',
        origin: 'right',
        reset: true,
        easing: 'ease-out',
        viewFactor: 1,
    }, 75);
}

// Use eventos de animação para chamar as funções
document.addEventListener('DOMContentLoaded', function () {
    animacao.on('reveal', function (domEl) {
        if (domEl.classList.contains('card-box-bottom')) {
            animacaoTextBottom();
        } else if (domEl.classList.contains('card-box-left')) {
            animacaoTextLeft();
        } else if (domEl.classList.contains('card-box-right')) {
            animacaoTextRight();
        }
    });
});



//////////////// Contador ////////////////

function animateCounter1(element, target) {
    let start = 0;
    element.textContent = "0 km"; 
    const timer = setInterval(function () {
        start += 100;
        element.textContent = Math.floor(start);
        if (start >= target) {
            clearInterval(timer);
            element.textContent = target;
        }
    }, 200);
}

function animateCounter2(element, target) {
    let start = 0;
    element.textContent = "0"; 
    const timer = setInterval(function () {
        start += 1;
        element.textContent = Math.floor(start) + " km";
        if (start >= target) {
            clearInterval(timer);
            element.textContent = target + " km";
        }
    }, 200);
}

const observer = new IntersectionObserver(entries => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            const counter = entry.target;
            const target = parseInt(counter.getAttribute("data-scroll"));
            const animationType = counter.getAttribute("data-counter-type");

            if (animationType === "type1") {
                animateCounter1(counter, target);
            } else if (animationType === "type2") {
                animateCounter2(counter, target);
            }

            observer.unobserve(counter);
        }
    });
});

// Inicializa os contadores quando a página carregar //
window.addEventListener("load", function() {
    const counters = document.querySelectorAll(".contador-start");
    counters.forEach(counter => {
        observer.observe(counter);
    });
});

