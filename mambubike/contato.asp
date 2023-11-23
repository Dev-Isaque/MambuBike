<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../include/Conn-G.asp"-->
<!--#include file="../include/aspjson.asp"-->

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
		<link rel="apple-touch-icon" sizes="180x180" href="assets/icon/apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="assets/icon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="assets/icon/favicon-16x16.png">
		<link rel="mask-icon" href="assets/icon/safari-pinned-tab.svg" color="#5bbad5">
		<meta name="msapplication-TileColor" content="#da532c">
		<meta name="theme-color" content="#ffffff">

		<!-- Bootstrap core CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">	
		<!-- Style -->
		<link href="style.css" rel="stylesheet" type="text/css">

        <!-- Animação Reveal -->
        <script src="https://unpkg.com/scrollreveal"></script>
	</head>

	<%
		If Request.ServerVariables("REQUEST_METHOD") = "POST" Then
			Dim recaptcha_secret, sendstring, objXML
			
			recaptcha_secret = "6Lf75TkUAAAAAEIYxegpwKVVX07PoMlYEH9Jb6mq"

			sendstring = "https://www.google.com/recaptcha/api/siteverify?onload=onloadCallback&render=explicit&secret=" & recaptcha_secret & "&response=" & Request.form("g-recaptcha-response")

			Set objXML = Server.CreateObject("MSXML2.ServerXMLHTTP")
			objXML.Open "GET", sendstring, False

			objXML.Send
			dim result, oJSON, success, action, errorCapatcha, errorMsg 

			result = (objXML.responseText)

			Set oJSON = New aspJSON
			oJSON.loadJSON(result)

			Set objXML = Nothing

			success = oJSON.data("success")

			If success = "True" Then
				vnm_participante 	= Trim(Request.Form("txtNome"))
				vds_email		 	= LCase(Trim(Request.Form("txtEmail")))
				vnr_telefone		= Request.Form("txtTelefone")
				vds_mensagem		= Trim(Request.Form("txtMensagem"))

				If vnm_participante <> "" AND vds_email <> "" Then
					vStrg = "<html><body>" &_
							"<h1>MENSAGEM DE CONTATO - MAMBUBIKE 2023</h1>" &_
							"<strong>Nome: </strong>" & vnm_participante & "<br>" &_
							"<strong>E-mail: </strong>" & vds_email & "<br>" &_
							"<strong>Telefone/Whatsapp: </strong>" & vnr_telefone & "<br>" &_
							"<strong>Mensagem: </strong>" & vds_mensagem & "<br>" &_
							"</body></html>"
					'----------------- cdossys ----------------------- 
					Dim ObjSendMail
					Set ObjSendMail = CreateObject("CDO.Message")
					ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
					ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "webmail.angra.rj.gov.br"
					ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465
					ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = 1
					ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60

					ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
					ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") ="site1@angra.rj.gov.br"
					ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") ="LantraEquipe171?"
					ObjSendMail.Configuration.Fields.Update
					ObjSendMail.To = "site1@angra.rj.gov.br"
					ObjSendMail.Subject = "Mensagem de contato - Mambubike 2023"
					ObjSendMail.From = "site1@angra.rj.gov.br"
					'ObjSendMail.Bcc= "site@angra.rj.gov.br"
					ObjSendMail.ReplyTo = "site1@angra.rj.gov.br"
					ObjSendMail.HTMLBody = vStrg
					ObjSendMail.Send

					Set myRst = Nothing
					Set ObjSendMail = Nothing

					Response.Write("<script>alert('Sua mensagem foi enviada com sucesso! Obrigado pela sua participação.');location.href='/mambubike/'</script>")
					Response.End
				End If
			Else
				Response.write("<script>alert('Recaptcha incorreto!');</script>")
			End If
		End If
	%>

<body>
	
	<nav class="navbar navbar-expand-lg position-fixed w-100 navbar-scroll">
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
						<a class="nav-link" href="index.asp">Home</a>
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
						<a class="nav-link" href="#">Contato</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<section class="contact" id="contact">
		<div class="container container-contato">
			<h3 class="text-center">Formulário de contato</h3>
			<p class="text-center">Envie sua contribuição, dúvida, crítica ou sugestão.</p>
			<form action="contato.asp" method="POST" class="g-3 needs-validation" novalidate>
				<div class="row">
					<div class="col-md-6">					
							<div class="form-group">
								<label for="txtNome" class="form-label">Nome:</label>
								<input type="text" class="form-control w-100" id="txtNome" name="txtNome" placeholder="Seu nome" required>
							</div>
							<div class="form-group">
								<label for="txtEmail" class="form-label">E-mail:</label>
								<input type="email" class="form-control w-100 toLowerCase" name="txtEmail" id="txtEmail" placeholder="digiteseuemail@gmail.com" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" required>
							</div>
							<div class="form-group">
								<label for="txtTelefone" class="form-label">Telefone/Whatsapp:</label>
								<input type="text" class="form-control w-100 telefone" id="txtTelefone" name="txtTelefone" placeholder="(**) *****-****">
							</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="txtMensagem" class="form-label">Sua mensagem:</label>
							<textarea class="form-control w-100" name="txtMensagem" id="txtMensagem" rows="5" placeholder="Sua mensagem" required></textarea>
						</div>
					</div>

					<div class="clearfix"></div>
					<div class="row">
						<!-- Site key -->
						<div class="g-recaptcha" data-callback="recaptchaCallback" data-sitekey="6Lf75TkUAAAAAEHgXPyCVl20Eh1qfSabxJh8exoX"></div>
						<!-- js recaptcha -->
						<script src="https://www.google.com/recaptcha/api.js?hl=pt-BR" async defer></script>
						<div class="col-lg-12 text-center mt-3">
							<button class="btn btn-envio" type="submit" id="btnEnviar" disabled>Enviar mensagem</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>

	<footer class="footer card-box-bottom">
        <div class="container bottom_border">
            <div class="row" style="display: flex; justify-content: space-between;">
				<div class=" col-sm-6 col-md-6 col-sm-6  col-12 col">
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

	<div class="container-seta">
		<a href="#" class="seta-up" id="linkSetaUp"><img src="icon/seta-up.svg" alt="" srcset=""></a>
	</div> 
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js" integrity="sha512-pHVGpX7F/27yZ0ISY+VVjyULApbDlD0/X0rgGbTqCE7WFW5MezNTWG/dnhtbBuICzsd0WQPgpE4REBLv+UqChw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

	<script src="assets/scripts.js"></script>
	<script src="scripts.js"></script>
	<script src="https://plugin.handtalk.me/web/latest/handtalk.min.js"></script>
	<script type="text/javascript">
		function recaptchaCallback(){ $("#btnEnviar").prop("disabled", false) }
		var ht = new HT({
			token: "7a92081e27daf17bd3b2efe277d0648c",
			avatar: "MAYA",
			pageSpeech: true,
			maxTextSize: 1000
		});
	</script>
	
</body>
	
</html>
