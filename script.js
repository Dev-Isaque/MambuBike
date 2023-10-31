function updateOnScrollAndResize() {
    var windowWidth = window.innerWidth;
  
    // Verifica se a largura da janela é maior que 992px
    if (windowWidth > 992) {
      var navbar = document.querySelector(".navbar-scroll");
      var section = document.querySelector(".header-home");
  
      if (section.getBoundingClientRect().bottom <= 0) {
        navbar.classList.add("bg-white");
      } else {
        navbar.classList.remove("bg-white");
      }
    } else {
      // Largura menor que 992px, então você pode fazer algo diferente, como deixar o background transparente
      var navbar = document.querySelector(".navbar-scroll");
      navbar.classList.remove("bg-white");
    }
  }
  
  // Chama a função de atualização quando a página carrega
  updateOnScrollAndResize();
  
  // Adiciona um ouvinte de evento para atualização quando a janela for redimensionada
  window.addEventListener("scroll", updateOnScrollAndResize);
  window.addEventListener("resize", updateOnScrollAndResize);

// Menu Hamburguer

$(document).ready(function() {
    // Quando a página carregar, verifique o tamanho da tela e ajuste a visibilidade
    toggleMenuVisibility();

    // Quando o botão do hamburguer for clicado
    $("#btn-hamburguer").on("click", function() {
        $(".navbar-nav").slideToggle();
        // Alternar a visibilidade dos ícones do menu e "X"
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
