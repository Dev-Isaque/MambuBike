<!doctype html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<title>MambuBike - Angra dos Reis</title>
		<meta name="description" content="Mobilidade urbana para estruturação do sistema cicloviário no bairro Parque Mambucaba, em Angra dos Reis.">
		<meta name="author" content="Prefeitura de Angra dos Reis">
		<meta name="keywords" content="Angra dos Reis, Parque Mambucaba, Ciclovia, Projeto cicloviário, Mobilidade Urbana, Perequê, Bicicletas">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="generator" content="Prefeitura de Angra dos Reis">
		<meta name="robots" content="index, follow" />

		<!-- para o compartilhar -->
		<meta property="og:title" content="MambuBike - Angra dos Reis" />
		<meta property="og:type" content="city" />
		<meta property="og:url" content="https://angra.rj.gov.br/mambubike" />
		<meta property="og:image" content="https://angra.rj.gov.br/mambubike/thumb.jpg" />
		<meta property="og:description" content="Mobilidade urbana para estruturação do sistema cicloviário no bairro Parque Mambucaba, em Angra dos Reis." />
		<meta property="og:locale" content="pt_BR">

		<!-- Icon Footer -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

		<!-- Favicon -->
		<link rel="apple-touch-icon" sizes="180x180" href="icon/apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="icon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="icon/favicon-16x16.png">
		<link rel="mask-icon" href="icon/safari-pinned-tab.svg" color="#5bbad5">
		<meta name="msapplication-TileColor" content="#da532c">
		<meta name="theme-color" content="#ffffff">

		<!-- Bootstrap core CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
		<!-- Style -->
		<link href="style.css" rel="stylesheet" type="text/css">

        <!-- Animação Reveal -->
        <script src="https://unpkg.com/scrollreveal"></script>

		<style>
			div.conteudo {
				display: flex;
				justify-content: space-evenly;
				gap: 10px;
			}

			div.texto {
				width: 350px;
				height: 450px;
				text-align: justify;
				/* border: 1px solid black; */
			}

			footer {
				margin-top: 100px;
				width: 100%;
				background-color: #db392b;
				min-height: 250px;
				padding: 10px 0px 25px 0px;
				color: white;
			}

			footer h5 {
				/* border-bottom: 2px solid white; */
				font-size: 15px;
				margin-bottom: 3%;
				margin-top: 7%;
			}

			footer p {
				font-size: 12px;
				margin-bottom: 2px;
			}

			footer div.bg-logo {
				display: flex;
				width: 130px;
				height: 130px;
				background-color: white;
				border-radius: 50%;
				justify-content: center;
				align-items: center;
				/* position: relative;
				left: 250px;
				top: 30px; */
			}

			footer img {
				background-color: rgba(255, 255, 255, 0);
			}

			footer a {
				color: white;
			}

			footer a:hover {
				color: yellow;
			}

			footer a:focus {
				color: gray;
			}

			footer a:visited {
				color: white;
			}

			.txt-footer {
				border-top: 2px solid white;
    			margin: 5px 50px;
			}

			
		</style>
	</head>

<body>
	
	<nav class="navbar navbar-expand-lg position-fixed w-100">
		<div class="container">
			<a class="navbar-brand" href="#">
				<img src="images/mambubike-logo.svg" alt="Mambubike - Inicial">
			</a>
			<button class="navbar-toggler hamburger-button" id="btn-hamburguer" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText">
				<i id="menu-icon" class="bi bi-list custon-icons"></i> <!-- Ícone do menu hamburguer -->
				<i id="close-icon" class="bi bi-x custon-icons" style="display: none;"></i> <!-- Ícone "X" (oculto por padrão) -->
			</button>
			<div class="navbar-collapse d-flex justify-content-end" id="navbarText">
				<ul class="navbar-nav container-nav-bar">
					<li class="nav-item">
						<a class="nav-link" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="assets/sobre.asp">Sobre</a>
					</li>
					<li class="nav-item">
						<a class="nav-link disabled" href="assets/agenda.asp">Agenda</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="assets/participe.asp">Participe</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle"  href="" id="bibliotecaDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Biblioteca</a>
						<ul class="dropdown-menu" aria-labelledby="bibliotecaDropdown">
							<li><a class="dropdown-item disabled" href="#">Glossário</a></li>
							<li><a class="dropdown-item disabled" href="#">Relatórios</a></li>
							<li><a class="dropdown-item" href="assets/projeto.asp">Projeto</a></li>
							<li><a class="dropdown-item disabled" href="#">Galeria de fotos</a></li>
						</ul>
					</li>
					
					<li class="nav-item">
						<a class="nav-link" href="assets/contato.asp">Contato</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<header class="header-home card-box-bottom" id="header">
		<img src="images/wallpaper-home.png" id="minhaImagem" class="desktop-logo">
	</header>

	<section class="nome-projeto">
		<div class="container">
			<div class="d-flex text-center align-items-center card-box-bottom">
				<div class="w-100">
					<h3>Projeto do sistema cicloviário no Parque Mambucaba, em Angra dos Reis </h3>
				</div>
			</div>
		</div>
	</section>

	<section class="apresentacao">
		<div class="container card-box-bottom">
			<div class="row card-box conteudo">
				<div class="col-md-4 texto card-box-bottom">
					<h3>O que é</h3>
					<p>O MambuBike é um projeto de mobilidade urbana que envolve a estruturação do sistema cicloviário no bairro Parque Mambucaba, em Angra dos Reis (RJ). Sua fase piloto foi desenvolvida ao longo de 2023, em uma parceria entre poder público, terceiro setor e com ações de participação da sociedade civil.</p>
				</div>
				<div class="col-md-4 texto card-box-bottom">
					<h3>Quem somos</h3>
					<p>O MambuBike é uma ação integrada, desenvolvida pela Prefeitura de Angra dos Reis, por meio da Secretaria Executiva de Ordem Pública e Mobilidade Urbana e da Secretaria de Desenvolvimento Regional, com assistência técnica da Iniciativa Mobilidade em Transformação. A Iniciativa é composta pelas organizações Cidade Ativa e Fundação Grupo Volkswagen, e contou com parcerias especializadas em diversas etapas de implementação do MambuBike.</p>
				</div>
				<div class="col-md-4 texto card-box-bottom">
					<h3>Objetivo</h3>
					<p>O bairro Parque Mambucaba conta com um número expressivo de ciclistas que utilizam a bicicleta como principal meio de circulação no seu cotidiano. O objetivo central do projeto é oferecer infraestrutura adequada para o deslocamento dos ciclistas, proporcionando segurança e conforto para todos os usuários, além de melhorar a integração com o transporte coletivo. Junto ao desenvolvimento do projeto urbano, diversas ações de engajamento foram programadas, visando ouvir a opinião das pessoas mais impactadas e exercitar a cidadania.</p>
				</div>
			</div>
		</div>
		
	</section>
	
	<section class="contador ">
		<div class="container text-center">
			<div class="pt-4 card-box-bottom">
				<h3 class="fw-bold mb-4 card-title-bottom text-uppercase"> Números de impacto do projeto </h3>

				<div class="row pt-lg-5">
					<div class="col">
						<div class="circle card-box-bottom">
							<img class="img-icon" src="icon/bike.svg" srcset="">
						</div>
						<span class="contador-start card-box-bottom" data-counter-type="type1" data-scroll="100">0</span>
						<p class="text-muted mb-1 pt-2 card-box-bottom">Paraciclos a serem instalados</p>
					</div>
					
					<div class="col">
						<div class="circle card-itens-bottom">
							<img class="img-icon" src="icon/location.svg" srcset="">
						</div>
						<span class="contador-start card-box-bottom" data-counter-type="type2" data-scroll="2.3">0</span>
						<p class="text-muted mb-1 pt-2 card-box-bottom">Instraestrutura cicloviária</p>
					</div>
				</div>			
			</div>
		</div>
	</section>

	<div class="container-seta">
		<a href="#" class="seta-up" id="linkSetaUp"><img src="icon/seta-up.svg" alt="" srcset=""></a>
	</div> 

	<footer class="footer card-box-bottom">
        <div class="container bottom_border ">
            <div class="row" style="display: flex; justify-content: space-between;">
                <div class=" col-sm-6 col-md-6 col-sm-6 col-12 col">
                    <h5 class="headin5_amrc col_white_amrc pt2">Projeto do sistema cicloviário no Parque Mambucaba</h5>

					<p class="pb-3"> <span class="material-symbols-outlined" style="vertical-align: middle;"> pin_drop </span> <a href="https://maps.app.goo.gl/WkviiWpUzwAu5yeE8" target="_blank" style="display: inline-block; vertical-align: middle;"> Rua Historiador Alípio Mendes, 156, antigo Fórum, Centro </a> </p>
					<p class="pb-3"> <span class="material-symbols-outlined" style="vertical-align: middle;">call</span> <a href="tel:+552433771755" target="_blank" style="display: inline-block; vertical-align: middle;"> (24) 3377-1755 </a> </p>
					<p> <span class="material-symbols-outlined" style="vertical-align: middle;">mail</span> <a href="mailto:ssp.mobilidade@angra.rj.gov.br" target="_blank" style="display: inline-block; vertical-align: middle;"> ssp.mobilidade@angra.rj.gov.br </a> </p>
                </div>

                <div class="col-sm-3 col-md-3 col-12 col text-center bg-logo ml-auto">
					<div style="width: 200px; border-radius: 50%;">
						<img src="images/Logo-prefeitura-footer.png" style="height: 70px; width: auto;" alt="">
					</div>
            	</div>
            </div>
        </div>
        <br>   
        <p class="text-center txt-footer">Secretaria executiva de ordem pública e mobilidade Urbana</p>
    </footer>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="scripts.js"></script>
	<script src="https://plugin.handtalk.me/web/latest/handtalk.min.js"></script>
	<script>
		var ht = new HT({
			token: "7a92081e27daf17bd3b2efe277d0648c",
			avatar: "MAYA",
			pageSpeech: true,
			maxTextSize: 1000
		});

		function verificarLarguraTela() {
            var larguraTela = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
            var imagem = document.getElementById("minhaImagem");
            
            var imagemMenor = "images/mambubike-logo.svg";
            var imagemMaior = "images/wallpaper-home.png";

            if (larguraTela < 992) {
                imagem.setAttribute("src", imagemMenor);
            } else {
                imagem.setAttribute("src", imagemMaior);
            }
        }

        window.addEventListener('load', verificarLarguraTela);
        window.addEventListener('resize', verificarLarguraTela);

	</script>
	
</body>
	
</html>
