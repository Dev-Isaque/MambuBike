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

		<!-- Favicon -->
		<link rel="apple-touch-icon" sizes="180x180" href="icon/apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="icon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="icon/favicon-16x16.png">
		<link rel="mask-icon" href="icon/safari-pinned-tab.svg" color="#5bbad5">
		<meta name="msapplication-TileColor" content="#da532c">
		<meta name="theme-color" content="#ffffff">

		<!-- Bootstrap core CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">	
		<!-- Style -->
		<link href="../style.css" rel="stylesheet" type="text/css">

        <!-- Animação Reveal -->
        <script src="https://unpkg.com/scrollreveal"></script>
	</head>

<body>
	
	<nav class="navbar navbar-expand-lg position-fixed w-100 navbar-scroll">
		<div class="container">
			<a class="navbar-brand" href="#">
				<img src="../images/mambubike-logo.svg" alt="Mambubike - Inicial">
			</a>
			<button class="navbar-toggler hamburger-button" id="btn-hamburguer" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText">
				<i id="menu-icon" class="bi bi-list custon-icons"></i> <!-- Ícone do menu hamburguer -->
				<i id="close-icon" class="bi bi-x custon-icons" style="display: none;"></i> <!-- Ícone "X" (oculto por padrão) -->
			</button>
			<div class="navbar-collapse d-flex justify-content-end" id="navbarText">
				<ul class="navbar-nav container-nav-bar">
                    <li class="nav-item">
						<a class="nav-link" href="../index.asp">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="sobre.asp">Sobre</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="agenda.asp">Agenda</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="participe.asp">Participe</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="bibliotecaDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Biblioteca</a>
						<ul class="dropdown-menu" aria-labelledby="bibliotecaDropdown">
							<li><a class="dropdown-item disabled" href="#">Glossário</a></li>
							<li><a class="dropdown-item disabled" href="#">Relatórios</a></li>
							<li><a class="dropdown-item" href="#">Projeto</a></li>
							<li><a class="dropdown-item disabled" href="#">Galeria de fotos</a></li>
						</ul>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Contato</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!-- Elemento de plano de fundo branco -->
	<div id="background-overlay"></div>
	
	<header class="header-home" id="header">
		<img src="../images/wallpaper-home.png" alt="" id="imagemLogo">
	</header>

	<section class="nome-projeto">
		<div class="container">
			<div class="d-flex text-center align-items-center card-box-bottom">
				<div class="w-100">
					<h3>Projeto do sitema cicloviário no Parque Mambucaba, em Angra dos Reis </h3>
				</div>
			</div>
		</div>
	</section>
	
	<section style="background-color: #F0F2F5;">
        <div class="container py-5 ">
            <div class="main-timeline-2">
                <div class="timeline-2 left-2 animacao hidden card-box-left">
                    <div class="card">
                    <img src="../images/projetos/ciclofaixa.png" class="card-img-top "
                        alt="Responsive image">
                    <div class="card-body p-4">
                        <h4 class="fw-bold mb-4 card-itens-left">Ciclofaixa</h4>
                        <p class="mb-0 card-itens-left">Faixa exclusiva para bicicleta localizada junto à via, separada dos demais veículos por pintura de piso, tachões e balizadores.</p>
						<p class="mb-0 card-itens-left">No projeto piloto, serão implementadas no contrafluxo dos carros, para garantir maior segurança aos ciclistas.</p>
                    </div>
                    </div>
                </div>
                
                <div class="timeline-2 right-2 card-box-right">
                    <div class="card">
                    <img src="../images/projetos/ciclorrota.png" class="card-img-top"
                        alt="Responsive image">
                    <div class="card-body p-4">
                        <h4 class="fw-bold mb-4">Ciclorrota</h4>
                        <p class="mb-0">Indicação de compartilhamento de via com veículos motorizados, com preferência para os ciclistas.</p>
						<p class="mb-0">No projeto piloto, serão implementadas no sentido do fluxo dos carros.</p>
                    </div>
                    </div>
                </div>

				<div class="timeline-2 left-2 animacao hidden card-box-left">
                    <div class="card">
                    <img src="../images/projetos/faixa-multiuso.png" class="card-img-top "
                        alt="Responsive image">
                    <div class="card-body p-4">
                        <h4 class="fw-bold mb-4">Faixa multiuso</h4>
                        <p class="mb-0">Área delimitada que pode servir a diversos usos, dependendo da situação. 
						Pode ser alargamento de calçada e aumento de área de passeio, vagas de estacionamento para carros e motocicletas, paraciclos e áreas de estar. </p>		
                    </div>
                    </div>
                </div>

				<div class="timeline-2 right-2 card-box-right">
                    <div class="card">
                    <img src="../images/projetos/calcadas-e-travessias.png" class="card-img-top"
                        alt="Responsive image">
                    <div class="card-body p-4">
                        <h4 class="fw-bold mb-4">Calçadas e travessias</h4>
                        <p class="mb-0 card-itens-left">Requalificação das travessias da área do projeto piloto, com pintura de faixas de pedestres,
						sinalização e ampliação de esquinas em pintura, dando mais segurança ao pedestre.</p>
                    </div>
                    </div>
                </div>

				<div class="timeline-2 left-2 animacao hidden card-box-left">
                    <div class="card">
                    <img src="../images/projetos/projetos-especiais.png" class="card-img-top "
                        alt="Responsive image">
                    <div class="card-body p-4">
                        <h4 class="fw-bold mb-4">Projetos especiais</h4>
                        <p class="mb-0">Frentes de escolas, equipamentos públicos e pontos de intermodalidade, 
						que receberão pinturas lúdicas e mobiliários urbanos de acordo com características locais específicas. </p>		
                    </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

	<section>
        <div class="container py-5 text-center">
			<div class="text-projeto1">
				<h3 class="fw-bold mb-4 card-title-bottom text-uppercase"> Como vamos fazer? </h3>
				<p class="text-muted mb-4 card-itens-left">( As imagens abaixo são meramente ilustrativas )</p>
				
				<img src="../images/projetos/imagem-ilustrativa-projeto.png" alt="">
			</div>

			<div class="text-projeto2 pt-4">
				<h3 class="fw-bold mb-4 card-title-bottom text-uppercase"> O Projeto Piloto  </h3>
				
				<p>
					O projeto piloto será desenvolvido na Avenida Francisco Magalhães de Castro (principal) e nas rua Getúlio Vargas (5), Aviador Santos Dumont (22) e Francisco Guedes da Silva (1). A partir do diagnóstico, percebeu-se nessa área um fluxo intenso de pessoas, ciclistas e veículos motorizados; forte presença de comércios; concentração de pontos de conflito registrados pela população; presença das escolas, e é um eixo importante de acesso e circulação no bairro.
					<br>
					A ideia do projeto piloto é testar soluções de desenho urbano, visando maior segurança e facilidade no deslocamento de ciclistas e pedestres. Confira aqui algumas propostas, estudos e desenhos em andamento do projeto! 
				</p>

				<img src="../images/projetos/imagem-ilustrativa-projeto2.png" alt="">
			</div>

        </div>
    </section>
	

	<div class="container-seta">
		<a href="#" class="seta-up" id="linkSetaUp"><img src="../icon/seta-up.svg" alt="" srcset=""></a>
	</div> 

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="../scripts.js"></script>
	<script src="https://plugin.handtalk.me/web/latest/handtalk.min.js"></script>
	<script>
		var ht = new HT({
			token: "7a92081e27daf17bd3b2efe277d0648c",
			avatar: "MAYA",
			pageSpeech: true,
			maxTextSize: 1000
		});
	</script>
	
</body>
	
</html>
