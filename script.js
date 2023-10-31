window.addEventListener("scroll", function() {
    var navbar = document.querySelector(".navbar-scroll");
    var section = document.querySelector(".header-home");

    if (section.getBoundingClientRect().bottom <= 0) {
      navbar.classList.add("bg-white");
    } else {
      navbar.classList.remove("bg-white");
    }
});

// Menu Hamburguer
$(document).ready(function() {
    // Quando a página carregar, verifique o tamanho da tela e ajuste a visibilidade
    toggleMenuVisibility();

    $("#btn-hamburguer").on("click", function() {
        $(".navbar-nav").slideToggle();
        $("#menu-icon").toggle();
        $("#close-icon").toggle();

        if ($(window).width() < 995) {
            // Aplicar o fundo branco apenas quando a largura for menor que 995 pixels
            $(".navbar-nav").css("background-color", "#fff");
        } else {
            // Remover o fundo branco quando a largura for maior ou igual a 995 pixels
            $(".navbar-nav").css("background-color", "transparent");
        }
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

// Animação das Paginas
const myObserver = new IntersectionObserver((entries) => {
    entries.forEach ((entry) => {
        if(entry.isIntersecting == true){
            entry.target.classList.add('show');
        }  else {
            entry.target.classList.remove('show');
        }
    })
})

const elements = document.querySelectorAll('.hidden');

elements.forEach((element) => myObserver.observe(element)); 

// Contador 

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


/// Inicializa os contadores quando a página carregar
window.addEventListener("load", function() {
    const counters = document.querySelectorAll(".contador-start");
    counters.forEach(counter => {
        observer.observe(counter);
    });
});
