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

		<!-- CSS -->
		<link rel="stylesheet" href="contato.css">

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
						<a class="nav-link disabled" href="agenda.asp">Agenda</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="participe.asp">Participe</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="" id="bibliotecaDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Biblioteca</a>
						<ul class="dropdown-menu" aria-labelledby="bibliotecaDropdown">
							<li><a class="dropdown-item disabled" href="#">Glossário</a></li>
							<li><a class="dropdown-item disabled" href="#">Relatórios</a></li>
							<li><a class="dropdown-item" href="projeto.asp">Projeto</a></li>
							<li><a class="dropdown-item disabled" href="#">Galeria de fotos</a></li>
						</ul>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contato.asp">Contato</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<section class="contact" id="contact">
		<div class="moldura">
			<div class="container container-contato">
				<h3>Formulário de contato</h3>
				<p>Envie sua contribuição, dúvida, crítica ou sugestão.</p>
				<div class="row">
					<div class="col-md-6">
						<form>
							<div class="mb-3">
								<input type="text" class="form-control" placeholder="Seu nome">
							</div>
							<div class="mb-3">
								<input type="email" class="form-control" placeholder="Seu e-mail">
							</div>
							<div class="mb-3">
								<input type="tel" class="form-control" placeholder="Seu telefone" id="telefone">
							</div>
						</form>
					</div>
					<div class="col-md-6">
						<div class="mb-3">
							<textarea class="form-control" rows="5" placeholder="Sua mensagem"></textarea>
						</div>
						<div class="mb-3">
							<button class="btn btn-contato botao" type="submit">Enviar mensagem</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="container-seta">
		<a href="#" class="seta-up" id="linkSetaUp"><img src="../icon/seta-up.svg" alt="" srcset=""></a>
	</div> 

	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/5.0.6/jquery.inputmask.min.js"></script>

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
