/* $(document).ready(function() {
    $('#telefone').inputmask("(99) [9]9999-9999");

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
	 
})  */


//////////////// Menu Hamburguer ////////////////
$(document).ready(function() {
    // Quando a página carregar, verifique o tamanho da tela e ajuste a visibilidade
    toggleMenuVisibility();

    $("#btn-hamburguer").on("click", function() {
        var $navbar = $(".navbar-nav");
        if ($navbar.hasClass("navbar-active")) {
            $navbar.removeClass('navbar-active');
            // Remova a classe 'navbar-active' imediatamente
            // sem animação de delay
            $navbar.css('display', 'none');
            $("#menu-icon").show();
            $("#close-icon").hide();
        } else {
            $navbar.addClass('navbar-active');
            $navbar.slideDown();
            $("#menu-icon").hide();
            $("#close-icon").show();
        }
    });

    $(window).resize(function() {
        toggleMenuVisibility();
    });


    function toggleMenuVisibility() {
         if ($(window).width() < 995) {
        $(".navbar-nav").hide();
    } else {
       
        $(".navbar-nav").show();
    }
    }
});

//////////////// Animação das Paginas ////////////////
// Inicialize o ScrollReveal
var animacao = ScrollReveal();

// Configuração para cards com animação debaixo para cima
animacao.reveal('.card-box-bottom', {
    duration: 600,
    distance: '10px',
    easing: 'ease-out',
    origin: 'bottom',
    scale: 1,
    viewFactor: 0,
    reset: true,
});

// Configuração para cards com animação à esquerda
animacao.reveal('.card-box-left', {
    duration: 600,
    distance: '10px',
    easing: 'ease-out',
    origin: 'left',
    reset: true,
    scale: 1,
    viewFactor: 0,
});

// Configuração para cards com animação à direita
animacao.reveal('.card-box-right', {
    duration: 600,
    distance: '10px',
    easing: 'ease-out',
    origin: 'right',
    reset: true,
    scale: 1,
    viewFactor: 0,
});



//////////////// Contador ////////////////

function animateCounter1(element, target) {
    let start = 0;
    element.textContent = "0 km"; 
    const timer = setInterval(function () {
        start += 10;
        element.textContent = Math.floor(start);
        if (start >= target) {
            console.log('tempo');
            clearInterval(timer);
            element.textContent = target;
        }
    }, 200);
} 

function animateCounter2(element, target) {
    let start = 0;
    element.textContent = "0"; 
    const timer = setInterval(function () {
        start += 0.20;
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

$(document).ready(function() {
  $(".image-container").click(function() {
    $(this).toggleClass("expanded");
  });

  $(document).click(function(event) {
    if (!$(event.target).closest(".expanded").length) {
      $(".image-container.expanded").removeClass("expanded");
    }
  });
});