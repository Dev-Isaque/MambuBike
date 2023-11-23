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
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">	
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
				vnm_participante 		  			= Trim(Request.Form("txtNome"))
				vds_email		 		  			= LCase(Trim(Request.Form("txtEmail")))
				vds_faixa_etaria 		  			= Request.Form("radioFaixaEtaria")
				vds_genero		 		  			= Request.Form("radioGenero")
				vds_escolaridade 		  			= Request.Form("radioEscolaridade")
				vds_cor			 		  			= Request.Form("radioCor")
				vid_bairro		 		  			= Request.Form("SelBairro")
				vsn_diversidade_funcional 			= Request.Form("radioDiversidadeFunc")
				vds_diversidade_funcional 			= Request.Form("txtDiversidadeFunc")
				vnr_telefone			  			= Request.Form("txtTelefone")
				vds_tipo_transporte		  			= Request.Form("radioTipoTransporte")
				vds_tipo_transporte_outro 			= Request.Form("txtTipoTransporteOutros")
				vsn_sente_seguro		  			= Request.Form("radioSenteSeguro")
				vds_sente_seguro		  			= Request.Form("txtSenteSeguro")
				vds_transportes_utiliza	  			= Request.Form("chkTransportesUtiliza")
				vds_transportes_utiliza_outros  	= Request.Form("txtTransportesUtilizaOutros")
				vsn_sente_seguro_transportes		= Request.Form("radioSenteSeguroTransp")
				vds_sente_seguro_transportes		= Request.Form("txtSenteSeguroTransp")
				vds_sai_atividades					= Request.Form("txtSaiBairroAtividades")
				vds_qts_dias_semana					= Request.Form("radioQtsDiasSemana")
				vds_tipo_transp_mais_utiliza		= Request.Form("radioTranspMaisUtiliza")
				vds_tipo_transp_mais_utiliza_outros	= Request.Form("txtTranspMaisUtiliza")
				vds_melhorar_a_pe					= Request.Form("txtMelhorarApe")
				vds_melhorar_bicicleta				= Request.Form("txtMelhorarBicicleta")
				vds_melhorar_transp_publico			= Request.Form("txtMelhorarTranspPublico")
				vds_melhorar_transp_individual		= Request.Form("txtMelhorarTranspIndividual")

				vds_bicicleta_dias_uso				= Request.Form("radioBicicletaDiasUso")
				vds_bicicleta_motivo_viagem			= Request.Form("chkBicicletaMotivoViagem")
				vds_bicicleta_motivo_viagem_outro	= Request.Form("txtBicicletaMotivoViagemOutro")

				vds_bicicleta_qtas_pessoas			= Request.Form("radioQtdPessoas")
				vsn_bicicleta_inst_trabalho			= Request.Form("radioBicicletaInstTrabalho")
				vds_bicicleta_motivo_uso			= Request.Form("chkBicicletaMotivoUso")
				vds_bicicleta_motivo_uso_outros		= Request.Form("txtBicicletaMotivoUsoOutros")

				vds_bicicleta_desafios_uso			= Request.Form("chkBicicletaDesafiosUso")
				vds_bicicleta_desafios_uso_outro	= Request.Form("txtBicicletaDesafiosUsoOutro")

				vds_bicicleta_tempo_medio			= Request.Form("txtBicicletaTempoMedio")

				vsn_ocorrencia_acidente				= Request.Form("radioOcorrenciaAcidente")
				vds_descricao_ocorrencia			= Request.Form("txtDescricaoOcorrencia")
				vds_local_ocorrencia				= Request.Form("txtLocalOcorrencia")

				vsn_transp_associado				= Request.Form("radioUsoAssociadaOutroTransp")
				vds_transp_associado				= Request.Form("chkUsoOutroTransp")
				vds_transp_associado_outros			= Request.Form("txtUsoOutrosTransp")
				vds_vias_prioritarias				= Request.Form("txtViasPrioritarias")
				vds_sugestoes_mobilidade			= Request.Form("txtSugestoesMobilidade")


'Response.Write("vnm_participante=" & vnm_participante & "<br>")
'Response.Write("vds_email=" & vds_email & "<br>")
'Response.Write("vds_faixa_etaria=" & vds_faixa_etaria & "<br>")
'Response.Write("vds_genero=" & vds_genero & "<br>")
'Response.Write("vds_escolaridade=" & vds_escolaridade & "<br>")
'Response.Write("vds_cor=" & vds_cor & "<br>")
'Response.Write("vid_bairro=" & vid_bairro & "<br>")
'Response.Write("vsn_diversidade_funcional=" & vsn_diversidade_funcional & "<br>")
'Response.Write("vds_diversidade_funcional=" & vds_diversidade_funcional & "<br>")
'Response.Write("vnr_telefone=" & vnr_telefone & "<br>")
'Response.Write("vds_tipo_transporte=" & vds_tipo_transporte & "<br>")
'Response.Write("vds_tipo_transporte_outro=" & vds_tipo_transporte_outro & "<br>")
'Response.Write("vsn_sente_seguro=" & vsn_sente_seguro & "<br>")
'Response.Write("vds_sente_seguro=" & vds_sente_seguro & "<br>")
'Response.Write("vds_transportes_utiliza=" & vds_transportes_utiliza & "<br>")
'Response.Write("vds_transportes_utiliza_outros=" & vds_transportes_utiliza_outros & "<br>")
'Response.Write("vsn_sente_seguro_transportes=" & vsn_sente_seguro_transportes & "<br>")
'Response.Write("vds_sente_seguro_transportes=" & vds_sente_seguro_transportes & "<br>")
'Response.Write("vds_sai_atividades=" & vds_sai_atividades & "<br>")
'Response.Write("vds_qts_dias_semana=" & vds_qts_dias_semana & "<br>")
'Response.Write("vds_tipo_transp_mais_utiliza=" & vds_tipo_transp_mais_utiliza & "<br>")
'Response.Write("vds_tipo_transp_mais_utiliza_outros=" & vds_tipo_transp_mais_utiliza_outros & "<br>")
'Response.Write("vds_melhorar_a_pe=" & vds_melhorar_a_pe & "<br>")
'Response.Write("vds_melhorar_bicicleta=" & vds_melhorar_bicicleta & "<br>")
'Response.Write("vds_melhorar_transp_publi=" & vds_melhorar_transp_publico & "<br>")
'Response.Write("vds_melhorar_transp_indiv=" & vds_melhorar_transp_individual & "<br>")
'Response.Write("vds_bicicleta_dias_uso=" & vds_bicicleta_dias_uso & "<br>")
'Response.Write("vds_bicicleta_motivo_viagem=" & vds_bicicleta_motivo_viagem & "<br>")
'Response.Write("vds_bicicleta_motivo_viagem=" & vds_bicicleta_motivo_viagem_outro & "<br>")
'Response.Write("vds_bicicleta_qtas_pessoa=" & vds_bicicleta_qtas_pessoas & "<br>")
'Response.Write("vsn_bicicleta_inst_trabalho=" & vsn_bicicleta_inst_trabalho & "<br>")
'Response.Write("vds_bicicleta_motivo_uso=" & vds_bicicleta_motivo_uso & "<br>")
'Response.Write("vds_bicicleta_motivo_uso_outros=" & vds_bicicleta_motivo_uso_outros & "<br>")
'Response.Write("vds_bicicleta_desafios_uso=" & vds_bicicleta_desafios_uso & "<br>")
'Response.Write("vds_bicicleta_desafios_uso_outro=" & vds_bicicleta_desafios_uso_outro & "<br>")
'Response.Write("vds_bicicleta_tempo_medio=" & vds_bicicleta_tempo_medio & "<br>")
'Response.Write("vsn_ocorrencia_acidente=" & vsn_ocorrencia_acidente & "<br>")
'Response.Write("vds_descricao_ocorrencia=" & vds_descricao_ocorrencia & "<br>")
'Response.Write("vds_local_ocorrencia=" & vds_local_ocorrencia & "<br>")
'Response.Write("vsn_transp_associado=" & vsn_transp_associado & "<br>")
'Response.Write("vds_transp_associado=" & vds_transp_associado & "<br>")
'Response.Write("vds_transp_associado_outros=" & vds_transp_associado_outros & "<br>")
'Response.Write("vds_vias_prioritarias=" & vds_vias_prioritarias & "<br>")
'Response.Write("vds_sugestoes_mobilidade=" & vds_sugestoes_mobilidade & "<br>")

'Response.End

				If vnm_participante <> "" AND vds_email <> "" Then
					vSql = "INSERT INTO TB_PMAR_SEOPM_QUESTIONARIO_MAMBUBIKE_2023 (nm_participante,ds_faixa_etaria,ds_genero,ds_escolaridade,ds_cor,id_bairro,sn_diversidade_funcional,ds_diversidade_funcional,nr_telefone " &_
							",ds_email,ds_tipo_transporte,ds_tipo_transporte_outro,sn_sente_seguro,ds_sente_seguro,ds_transportes_utiliza,ds_transportes_utiliza_outros,sn_sente_seguro_transportes,ds_sente_seguro_transportes " &_
							",ds_sai_atividades,ds_qts_dias_semana,ds_tipo_transp_mais_utiliza,ds_tipo_transp_mais_utiliza_outros,ds_melhorar_a_pe,ds_melhorar_bicicleta,ds_melhorar_transp_publico,ds_melhorar_transp_individual,ds_bicicleta_dias_uso " &_
							",ds_bicicleta_motivo_viagem,ds_bicicleta_motivo_viagem_outro,ds_bicicleta_qtas_pessoas,sn_bicicleta_inst_trabalho,ds_bicicleta_motivo_uso,ds_bicicleta_motivo_uso_outro,ds_bicicleta_desafios_uso_outro " &_
							",ds_bicicleta_desafios_uso,ds_bicicleta_tempo_medio,sn_ocorrencia_acidente,ds_descricao_ocorrencia,ds_local_ocorrencia,sn_transp_associado,ds_transp_associado,ds_transp_associado_outros,ds_vias_prioritarias,ds_sugestoes_mobilidade,dt_cadastro) " &_
							"VALUES ('" & vnm_participante &_
							"','" & vds_faixa_etaria &_
							"','" & vds_genero &_
							"','" & vds_escolaridade &_
							"','" & vds_cor &_
							"'," & vid_bairro &_
							",'" & vsn_diversidade_funcional &_
							"','" & vds_diversidade_funcional &_
							"','" & vnr_telefone &_
							"','" & vds_email &_
							"','" & vds_tipo_transporte &_
							"','" & vds_tipo_transporte_outro &_
							"','" & vsn_sente_seguro &_
							"','" & vds_sente_seguro &_
							"','" & vds_transportes_utiliza &_
							"','" & vds_transportes_utiliza_outros &_
							"','" & vsn_sente_seguro_transportes &_
							"','" & vds_sente_seguro_transportes &_
							"','" & vds_sai_atividades &_
							"','" & vds_qts_dias_semana &_
							"','" & vds_tipo_transp_mais_utiliza &_
							"','" & vds_tipo_transp_mais_utiliza_outros &_
							"','" & vds_melhorar_a_pe &_
							"','" & vds_melhorar_bicicleta &_
							"','" & vds_melhorar_transp_publico &_
							"','" & vds_melhorar_transp_individual &_
							"','" & vds_bicicleta_dias_uso &_
							"','" & vds_bicicleta_motivo_viagem &_
							"','" & vds_bicicleta_motivo_viagem_outro &_
							"','" & vds_bicicleta_qtas_pessoas &_
							"','" & vsn_bicicleta_inst_trabalho &_
							"','" & vds_bicicleta_motivo_uso &_
							"','" & vds_bicicleta_motivo_uso_outro &_
							"','" & vds_bicicleta_desafios_uso_outro &_
							"','" & vds_bicicleta_desafios_uso &_
							"','" & vds_bicicleta_tempo_medio &_
							"','" & vsn_ocorrencia_acidente &_
							"','" & vds_descricao_ocorrencia &_
							"','" & vds_local_ocorrencia &_
							"','" & vsn_transp_associado &_
							"','" & vds_transp_associado &_
							"','" & vds_transp_associado_outros &_
							"','" & vds_vias_prioritarias &_
							"','" & vds_sugestoes_mobilidade &_
							"','" & Now() & "')"
					Set myRst = Server.CreateObject("ADODB.Recordset")
					SqlExecute myRst, vSql

					vStrg = "<html><body>" &_
							"<h1>QUESTIONÁRIO RECEBIDO</h1>" &_
							"<p>Obrigado pela sua participação!.</p>" &_
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
					ObjSendMail.To = vds_email
					ObjSendMail.Subject = "Confirmação de participação - Questionário Mambubike 2023"
					ObjSendMail.From = "site1@angra.rj.gov.br"
					'ObjSendMail.Bcc= "site@angra.rj.gov.br"
					ObjSendMail.ReplyTo = "site1@angra.rj.gov.br"
					ObjSendMail.HTMLBody = vStrg
					ObjSendMail.Send

					Set myRst = Nothing
					Set ObjSendMail = Nothing

					Response.Write("<script>alert('Questionário enviado com sucesso! Obrigado pela sua participação.');location.href='/mambubike/'</script>")
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
							<a class="nav-link" href="#">Participe</a>
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

		<section class="nome-projeto" style="padding-top: 120px;">
			<div class="container h-100 ">
				<div class="d-flex text-center align-items-center card-box-bottom">
					<div class="w-100">
						<h4>Esse questionário é uma etapa da participação popular para o desenvolvimento do projeto <br> MambuBike – Sistema Cicloviário do Parque Mambucaba. Sua participação é muito importante </h4>
					</div>
				</div>
			</div>
		</section>

		<div class="container">
			<form action="participe.asp" method="POST" class="g-3 needs-validation" novalidate>
				<!-- Formulário <i class="bi bi-x-circle"></i> -->

				<div class="moldura">
					<!--Nome-->
					<div class="mb-3 row">
						<label for="txtNome" class="form-label"><h6>Nome: </h6></label>
						<input type="text" class="form-control" name="txtNome" id="txtNome" minlength="3" required>
						<div class="invalid-feedback">Campo obrigatório</div>
					</div>
					<br>
					<!--Email-->
					<div class="mb-3 row">
						<label for="txtEmail" class="form-label"><h6>E-mail: </h6></label>
						<input type="email" class="form-control toLowerCase" name="txtEmail" id="txtEmail" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" required>
						<div class="invalid-feedback">Campo obrigatório</div>
					</div>

					<!--Faixa Etaria-->
					<div >
						<h6>Faixa etária:</h6>
						<div class="form-check form-check-inline">
							<input class="form-check-input custom-checkbox" type="radio" name="radioFaixaEtaria" id="radioFaixaEtaria1" value="0-12 anos">
							<label class="form-check-label" for="radioFaixaEtaria1">0-12 anos</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioFaixaEtaria" id="radioFaixaEtaria2" value="13-20 anos">
							<label class="form-check-label" for="radioFaixaEtaria2">13-20 anos</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioFaixaEtaria" id="radioFaixaEtaria3" value="21-35 anos">
							<label class="form-check-label" for="radioFaixaEtaria3">21-35 anos</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioFaixaEtaria" id="radioFaixaEtaria4" value="35-50 anos">
							<label class="form-check-label" for="radioFaixaEtaria4">35-50 anos</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioFaixaEtaria" id="radioFaixaEtaria5" value="Mais que 50 anos">
							<label class="form-check-label" for="radioFaixaEtaria5">Mais que 50 anos</label>
						</div>
					</div>
					<br>
					
					<!--Generos-->
					<div >
						<h6>Gênero: </h6>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioGenero" id="radioGenero1" value="Feminino">
							<label class="form-check-label" for="radioGenero1">Feminino</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioGenero" id="radioGenero2" value="Masculino">
							<label class="form-check-label" for="radioGenero2">Masculino</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioGenero" id="radioGenero3" value="Outro">
							<label class="form-check-label" for="radioGenero3">Outro</label>
						</div>
					</div>
					<br>

					<!--Escolaridade-->
					<div >
						<h6>Escolaridade: </h6>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioEscolaridade" id="radioEscolaridade1" value="S/ Instrução">
							<label class="form-check-label" for="radioEscolaridade1">S/ Instrução</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioEscolaridade" id="radioEscolaridade2" value="Ensino fundamental">
							<label class="form-check-label" for="radioEscolaridade2">Ensino fundamental</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioEscolaridade" id="radioEscolaridade3" value="Ensino médio">
							<label class="form-check-label" for="radioEscolaridade3">Ensino médio</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioEscolaridade" id="radioEscolaridade4" value="Ensino superior">
							<label class="form-check-label" for="radioEscolaridade4">Ensino superior</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioEscolaridade" id="radioEscolaridade5" value="Pós-graduação">
							<label class="form-check-label" for="radioEscolaridade5">Pós-graduação</label>
						</div>
					</div>
					<br>

					<!--Cor-->
					<div >
						<h6>Cor: </h6>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioCor" id="radioCor1" value="Branca">
							<label class="form-check-label" for="radioCor1">Branca</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioCor" id="radioCor2" value="Preta">
							<label class="form-check-label" for="radioCor2">Preta</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioCor" id="radioCor3" value="Amarela">
							<label class="form-check-label" for="radioCor3">Amarela</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioCor" id="radioCor4" value="Parda">
							<label class="form-check-label" for="radioCor4">Parda</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioCor" id="radioCor5" value="Indígena">
							<label class="form-check-label" for="radioCor5">Indígena</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioCor" id="radioCor6" value="Sem resposta">
							<label class="form-check-label" for="radioCor6">Sem resposta</label>
						</div>
					</div>
					<br>

					<!--Bairro onde mora-->
					<div >
						<h6>Bairro onde mora: </h6>
						<select class="form-select" id="SelBairro" name="SelBairro" required style="width: 32%;">
							<option value="">Selecione seu bairro</option>
							<%
							vSql = "SELECT * FROM TB_SOPA_BAIRROS_ANGRA ORDER BY bairro"
							Set myRst = Server.CreateObject("ADODB.Recordset")
							SqlExecute myRst, vSql
							Do while not myRst.EOF
								vid_bairro = myRst.fields("id_bairro")
								vds_bairro = myRst.fields("bairro")
								%>
								<option value="<%=vid_bairro%>" <%If vid_bairro=vid_bairro_atividade Then Response.write("selected") End If%>><%=vds_bairro%></option>
								<%
								myRst.MoveNext
							Loop
							Set myRst = Nothing
							%>
						</select>
						<div class="invalid-feedback">Campo obrigatório</div>
					</div>
					<br>

					<!--Diversidade funcional-->
					<div>
						<h6>Você ou alguém da sua família possui alguma diversidade funcional? </h6>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioDiversidadeFunc" id="radioDiversidadeFunc1" value="Sim">
							<label class="form-check-label" for="radioDiversidadeFunc1">Sim</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioDiversidadeFunc" id="radioDiversidadeFunc2" value="Não">
							<label class="form-check-label" for="radioDiversidadeFunc2">Não</label>
						</div>
					</div>
					<div class="mb-3 sesim3">
						<label for="txtDiversidadeFunc" class="form-label">Se sim, quem e qual?</label>
						<textarea class="form-control" id="txtDiversidadeFunc" name="txtDiversidadeFunc" rows="3"></textarea>
					</div>
					<br>

					<!--Telefone/Zap-->
					<div class="mb-3">
						<label for="txtTelefone" class="form-label"><h6>Telefone/Whatsapp:</h6></label>
						<input style="width: 19%;" type="text" class="form-control telefone" id="txtTelefone" name="txtTelefone" maxlength="15" placeholder="(**) *****-****" pattern="\([0-9]{2}\)[\s][0-9]{4,5}-[0-9]{4}">
					</div>
					<br>
					
					<div class="testando">
						<h6><strong>1.</strong> Qual tipo de transporte você <strong>mais utiliza</strong> dentro do seu bairro?</h6>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte1" value="A pé">
							<label class="form-check-label" for="radioTipoTransporte1">A pé</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte2" value="Ônibus serviço">
							<label class="form-check-label" for="radioTipoTransporte2">Ônibus serviço</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte3" value="Taxi">
							<label class="form-check-label" for="radioTipoTransporte3">Táxi</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte4" value="Bicicleta">
							<label class="form-check-label" for="radioTipoTransporte4">Bicicleta</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte5" value="Moto">
							<label class="form-check-label" for="radioTipoTransporte5">Moto</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte6" value="Barco próprio">
							<label class="form-check-label" for="radioTipoTransporte6">Barco próprio</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte7" value="Ônibus municipal">
							<label class="form-check-label" for="radioTipoTransporte7">Ônibus municipal</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte8" value="Carro próprio">
							<label class="form-check-label" for="radioTipoTransporte8">Carro próprio</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte9" value="Barco serviço">
							<label class="form-check-label" for="radioTipoTransporte9">Barco serviço</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte10" value="Ônibus intermunicipal">
							<label class="form-check-label" for="radioTipoTransporte10">Ônibus intermunicipal</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte11" value="Aplicativo (Uber/99)">
							<label class="form-check-label" for="radioTipoTransporte11">Aplicativo (Uber/99)</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte12" value="Barco público">
							<label class="form-check-label" for="radioTipoTransporte12">Barco público</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioTipoTransporte" id="radioTipoTransporte13" value="Outros">
							<label class="form-check-label" for="radioTipoTransporte13">Outros</label>
							<input type="text" class="form-control" id="txtTipoTransporteOutros" name="txtTipoTransporteOutros" style="display:none;">
						</div>
					</div>
					<br>

					<!--Segurança no meio de transporte-->
					<div>
						<h6><strong>2.</strong> Você se sente seguro ao se deslocar utilizando este meio de transporte?</h6>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioSenteSeguro" id="radioSenteSeguro1" value="Sim">
							<label class="form-check-label" for="radioSenteSeguro1">Sim. Por quê?</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioSenteSeguro" id="radioSenteSeguro2" value="Não">
							<label class="form-check-label" for="radioSenteSeguro2">Não. Por quê?</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="text" class="form-control" id="txtSenteSeguro" name="txtSenteSeguro" style="width: 100%;">
						</div>
					</div>
					<br>
					<!--Outros transportes-->
					<div>
						<h6><strong>3.</strong> Quais <strong>outros</strong> tipos de transporte você utiliza dentro do seu bairro</h6>
						<div class="form-check">
							<input class="form-check-input custom-checkbox" type="checkbox" value="A pé" id="chkTransportesUtiliza1" name="chkTransportesUtiliza">
							<label class="form-check-label" for="chkTransportesUtiliza1">
								A pé
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Bicicleta" id="chkTransportesUtiliza2" name="chkTransportesUtiliza">
							<label class="form-check-label" for="chkTransportesUtiliza2">
								Bicicleta
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Ônibus municipal" id="chkTransportesUtiliza3" name="chkTransportesUtiliza">
							<label class="form-check-label" for="chkTransportesUtiliza3">
								Ônibus municipal
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Ônibus intermunicipal" id="chkTransportesUtiliza4" name="chkTransportesUtiliza">
							<label class="form-check-label" for="chkTransportesUtiliza4">
								Ônibus intermunicipal
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Ônibus serviço" id="chkTransportesUtiliza5" name="chkTransportesUtiliza">
							<label class="form-check-label" for="chkTransportesUtiliza5">
								Ônibus serviço
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Moto" id="chkTransportesUtiliza6" name="chkTransportesUtiliza">
							<label class="form-check-label" for="chkTransportesUtiliza6">
								Moto
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Carro próprio" id="chkTransportesUtiliza7" name="chkTransportesUtiliza">
							<label class="form-check-label" for="chkTransportesUtiliza7">
								Carro próprio
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Aplicativo(Uber/99)" id="chkTransportesUtiliza8" name="chkTransportesUtiliza">
							<label class="form-check-label" for="chkTransportesUtiliza8">
								Aplicativo(Uber/99)
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Táxi" id="chkTransportesUtiliza9" name="chkTransportesUtiliza">
							<label class="form-check-label" for="chkTransportesUtiliza9">
								Táxi
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Barco próprio" id="chkTransportesUtiliza10" name="chkTransportesUtiliza">
							<label class="form-check-label" for="chkTransportesUtiliza10">
								Barco próprio
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Barco serviço" id="chkTransportesUtiliza11" name="chkTransportesUtiliza">
							<label class="form-check-label" for="chkTransportesUtiliza11">
								Barco serviço
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Barco público" id="chkTransportesUtiliza12" name="chkTransportesUtiliza">
							<label class="form-check-label" for="chkTransportesUtiliza12">
								Barco público
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Outros:" id="chkTransportesUtiliza13">
							<label class="form-check-label" for="chkTransportesUtiliza13">
								Outros
							</label>
							<input type="text" class="form-control" id="txtTransportesUtilizaOutros" name="txtTransportesUtilizaOutros" style="display:none">
						</div>
					</div>
					<br>
					<!--Você se sente seguro com esses transportes-->
					<div style="display: flex; flex-direction: column;">
						<h6><strong>4.</strong> Você se sente seguro ao se deslocar utilizando este(s) meio(s) de transporte?</h6>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioSenteSeguroTransp" id="radioSenteSeguroTransp1" value="Sim">
							<label class="form-check-label" for="radioSenteSeguroTransp1">Sim. Por quê?</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioSenteSeguroTransp" id="radioSenteSeguroTransp2" value="Não">
							<label class="form-check-label" for="radioSenteSeguroTransp2">Não. Por quê?</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="text" class="form-control" name="txtSenteSeguroTransp" id="txtSenteSeguroTransp" style="width: 100%;">
						</div>
					</div>
					<br>
					<!--Atividades do bairros-->
					<div class="mb-3">
						<h6><strong>5.</strong> Você sai do seu bairro para	quais atividades?</h6>
						<!-- <label for="txtSaiBairroAtividades" class="form-label"><strong>5.</strong> Você sai do seu bairro para	quais atividades?</label> -->
						<textarea class="form-control" id="txtSaiBairroAtividades" name="txtSaiBairroAtividades" rows="3"></textarea>
					</div>
					<br>
					<!--dias da semana-->
					<div>
						<h6><strong>6.</strong> Quantos dias na semana?</h6>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioQtsDiasSemana" id="radioQtsDiasSemana1" value="1 dia">
							<label class="form-check-label" for="radioQtsDiasSemana1">1 dia</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioQtsDiasSemana" id="radioQtsDiasSemana2" value="2 dias">
							<label class="form-check-label" for="radioQtsDiasSemana2">2 dias</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioQtsDiasSemana" id="radioQtsDiasSemana3" value="3 dias">
							<label class="form-check-label" for="radioQtsDiasSemana3">3 dias</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioQtsDiasSemana" id="radioQtsDiasSemana4" value="4 dias">
							<label class="form-check-label" for="radioQtsDiasSemana4">4 dias</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioQtsDiasSemana" id="radioQtsDiasSemana5" value="5 dias">
							<label class="form-check-label" for="radioQtsDiasSemana5">5 dias</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioQtsDiasSemana" id="radioQtsDiasSemana6" value="6 dias">
							<label class="form-check-label" for="radioQtsDiasSemana6">6 dias</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="radioQtsDiasSemana" id="radioQtsDiasSemana7" value="Todos os dias">
							<label class="form-check-label" for="radioQtsDiasSemana7">Todos os dias</label>
						</div>
					</div>
					<br>
					<!--transporte para sair do bairro-->
						<div>
							<h6><strong>7.</strong> Qual tipo de transporte você <strong>mais utiliza</strong> para sair do seu bairro?</h6>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza1" value="A pé">
								<label class="form-check-label" for="radioTranspMaisUtiliza1">A pé</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza2" value="Ônibus serviço">
								<label class="form-check-label" for="radioTranspMaisUtiliza2">Ônibus serviço</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza3" value="Taxi">
								<label class="form-check-label" for="radioTranspMaisUtiliza3">Taxi</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza4" value="Bicicleta">
								<label class="form-check-label" for="radioTranspMaisUtiliza4">Bicicleta</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza5" value="Moto">
								<label class="form-check-label" for="radioTranspMaisUtiliza5">Moto</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza6" value="Barco próprio">
								<label class="form-check-label" for="radioTranspMaisUtiliza6">Barco próprio</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza7" value="Ônibus municipal">
								<label class="form-check-label" for="radioTranspMaisUtiliza7">Ônibus municipal</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza8" value="Carro próprio">
								<label class="form-check-label" for="radioTranspMaisUtiliza8">Carro próprio</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza9" value="Barco serviço">
								<label class="form-check-label" for="radioTranspMaisUtiliza9">Barco serviço</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza10" value="Ônibus intermunicipal">
								<label class="form-check-label" for="radioTranspMaisUtiliza10">Ônibus intermunicipal</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza11" value="Aplicativo (Uber/99)">
								<label class="form-check-label" for="radioTranspMaisUtiliza11">Aplicativo (Uber/99)</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza12" value="Barco público">
								<label class="form-check-label" for="radioTranspMaisUtiliza12">Barco público</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioTranspMaisUtiliza" id="radioTranspMaisUtiliza13" value="Outros">
								<label class="form-check-label" for="radioTranspMaisUtiliza13">Outros</label>
								<input type="text" class="form-control" id="txtTranspMaisUtiliza" name="txtTranspMaisUtiliza" style="display:none">
							</div>
						</div>
					
					<br>
					<!--melhorar no deslocamento-->
					<div>
						<h6><strong>8.</strong> O que você acha que poderia melhorar em relação aos seus deslocamentos no bairro e na
							cidade, em relação aos seguintes aspectos:</h6>
						<div class="mb-3">
							<label for="txtMelhorarApe" class="form-label">A pé:</label>
							<textarea class="form-control" name="txtMelhorarApe" id="txtMelhorarApe" rows="3"></textarea>
						</div>
						<div class="mb-3">
							<label for="txtMelhorarBicicleta" class="form-label">Bicicleta</label>
							<textarea class="form-control" id="txtMelhorarBicicleta" rows="3"></textarea>
						</div>
						<div class="mb-3">
							<label for="txtMelhorarTranspPublico" class="form-label">Transporte público</label>
							<textarea class="form-control" id="txtMelhorarTranspPublico" rows="3"></textarea>
						</div>
						<div class="mb-3">
							<label for="txtMelhorarTranspIndividual" class="form-label">Transporte individual</label>
							<textarea class="form-control" id="txtMelhorarTranspIndividual" rows="3"></textarea>
						</div>
					</div>
					<br>
					<br>
					<br>
					<!--CICLISTAS-->
					<div id="ciclistas">
						<div id="ciclistas-header">
							<h5>Perguntas para ciclistas</h5>
							<p>(que responderam bicicleta nas perguntas 1, 3 ou 7)</p>
						</div>
						<br>
						<!--dias usando a bike-->
						<div>
							<h6><strong>A.</strong> Quantos dias por semana você costuma usar a bicicleta?</h6>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioBicicletaDiasUso" id="radioBicicletaDiasUso1" value="1 dia">
								<label class="form-check-label" for="radioBicicletaDiasUso1">1 dia</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioBicicletaDiasUso" id="radioBicicletaDiasUso2" value="2 dias">
								<label class="form-check-label" for="radioBicicletaDiasUso2">2 dias</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioBicicletaDiasUso" id="radioBicicletaDiasUso3" value="3 dias">
								<label class="form-check-label" for="radioBicicletaDiasUso3">3 dias</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioBicicletaDiasUso" id="radioBicicletaDiasUso4" value="4 dias">
								<label class="form-check-label" for="radioBicicletaDiasUso4">4 dias</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioBicicletaDiasUso" id="radioBicicletaDiasUso5" value="5 dias">
								<label class="form-check-label" for="radioBicicletaDiasUso5">5 dias</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioBicicletaDiasUso" id="radioBicicletaDiasUso6" value="6 dias">
								<label class="form-check-label" for="radioBicicletaDiasUso6">6 dias</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioBicicletaDiasUso" id="radioBicicletaDiasUso7" value="Todos os dias">
								<label class="form-check-label" for="radioBicicletaDiasUso7">Todos os dias</label>
							</div>
						</div>
						<br>
						<!--motivo-->
						<div>
							<h6><strong>B.</strong> Qual o motivo da viagem?</h6>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="Trabalho" name="chkBicicletaMotivoViagem" id="chkBicicletaMotivoViagem1">
								<label class="form-check-label" for="chkBicicletaMotivoViagem1">
									Trabalho
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="Escola" name="chkBicicletaMotivoViagem" id="chkBicicletaMotivoViagem2">
								<label class="form-check-label" for="chkBicicletaMotivoViagem2">
									Escola
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="Compras" name="chkBicicletaMotivoViagem" id="chkBicicletaMotivoViagem3">
								<label class="form-check-label" for="chkBicicletaMotivoViagem3">
									Compras
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="Lazer" name="chkBicicletaMotivoViagem" id="chkBicicletaMotivoViagem4">
								<label class="form-check-label" for="chkBicicletaMotivoViagem4">
									Lazer
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="Ir para o ponto de ônibus" name="chkBicicletaMotivoViagem" id="chkBicicletaMotivoViagem5">
								<label class="form-check-label" for="chkBicicletaMotivoViagem5">
									Ir para o ponto de ônibus
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="Outro" name="chkBicicletaMotivoViagem" id="chkBicicletaMotivoViagem">
								<label class="form-check-label" for="chkBicicletaMotivoViagem">
									Outro
								</label>
								<input type="text" class="form-control" id="txtBicicletaMotivoViagemOutro" name="txtBicicletaMotivoViagemOutro" style="display:none">
							</div>
						</div>
						<br>
						<!--Levar na bike-->
						<div>
							<h6><strong>C.</strong> Quantas pessoas você costuma levar na bike?</h6>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioQtdPessoas" id="radioQtdPessoas1" value="Ando sozinho(a)">
								<label class="form-check-label" for="radioQtdPessoas1">Ando sozinho(a)</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioQtdPessoas" id="radioQtdPessoas2" value="1 passageiro(a)">
								<label class="form-check-label" for="radioQtdPessoas2">1 passageiro(a)</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioQtdPessoas" id="radioQtdPessoas3" value="2 ou + passageiros(as)">
								<label class="form-check-label" for="radioQtdPessoas3">2 ou + passageiros(as)</label>
							</div>
						</div>
						<br>
						<!--bike para trabalho-->
						<div>
							<h6><strong>D.</strong> Você usa a bicicleta como instrumento de trabalho?</h6>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioBicicletaInstTrabalho" id="radioBicicletaInstTrabalho1" value="Sim">
								<label class="form-check-label" for="radioBicicletaInstTrabalho1">Sim</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioBicicletaInstTrabalho" id="radioBicicletaInstTrabalho2" value="Não">
								<label class="form-check-label" for="radioBicicletaInstTrabalho2">Não</label>
							</div>
						</div>
						<br>
						<!--pq usa a bike-->
						<div>
							<h6><strong>E.</strong> Por que você usa a bicicleta?</h6>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="Economia" name="chkBicicletaMotivoUso" id="chkBicicletaMotivoUso1">
								<label class="form-check-label" for="chkBicicletaMotivoUso1">
									Economia
								</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="Conforto" name="chkBicicletaMotivoUso" id="chkBicicletaMotivoUso2">
								<label class="form-check-label" for="chkBicicletaMotivoUso2">
									Conforto
								</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="Flexibilidade de horário" name="chkBicicletaMotivoUso" id="chkBicicletaMotivoUso3">
								<label class="form-check-label" for="chkBicicletaMotivoUso3">
									Flexibilidade de horário
								</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="Ônibus não satisfaz" name="chkBicicletaMotivoUso" id="chkBicicletaMotivoUso4">
								<label class="form-check-label" for="chkBicicletaMotivoUso4">
									Ônibus não satisfaz
								</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="Deslocamento muito curto" name="chkBicicletaMotivoUso" id="chkBicicletaMotivoUso5">
								<label class="form-check-label" for="chkBicicletaMotivoUso5">
									Deslocamento muito curto
								</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="Porque faz bem para saúde" name="chkBicicletaMotivoUso" id="chkBicicletaMotivoUso6">
								<label class="form-check-label" for="chkBicicletaMotivoUso6">
									Porque faz bem para saúde
								</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="Outro" name="chkBicicletaMotivoUso" id="chkBicicletaMotivoUso7">
								<label class="form-check-label" for="chkBicicletaMotivoUso7">
									Outro
								</label>
								<input type="text" class="form-control" id="txtBicicletaMotivoUsoOutros" name="txtBicicletaMotivoUsoOutros" style="display:none">
							</div>
						</div>
						<br>
						<!--principais desafios de bike-->
						<div>
							<h6><strong>F.</strong> Quais são os principais desafios que você enfreta ao usar a bicicleta?</h6>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="Falta de infraestrutura" name="chkBicicletaDesafiosUso" id="chkBicicletaDesafiosUso1">
								<label class="form-check-label" for="chkBicicletaDesafiosUso1">
									Falta de infraestrutura
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="Falta de respeito no trânsito" name="chkBicicletaDesafiosUso" id="chkBicicletaDesafiosUso2">
								<label class="form-check-label" for="chkBicicletaDesafiosUso2">
									Falta de respeito no trânsito
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="Falta de local para estacionar a bicicleta" name="chkBicicletaDesafiosUso" id="chkBicicletaDesafiosUso3">
								<label class="form-check-label" for="chkBicicletaDesafiosUso3">
									Falta de local para estacionar a bicicleta
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="Falta de sombreamento" name="chkBicicletaDesafiosUso" id="chkBicicletaDesafiosUso4">
								<label class="form-check-label" for="chkBicicletaDesafiosUso4">
									Falta de sombreamento
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="Outro" name="chkBicicletaDesafiosUso" id="chkBicicletaDesafiosUso5">
								<label class="form-check-label" for="chkBicicletaDesafiosUso5">
									Outro
								</label>
								<input type="text" class="form-control" id="txtBicicletaDesafiosUsoOutro" name="txtBicicletaDesafiosUsoOutro" style="display:none">
							</div>
						</div>
						<br>
						<!--tempo médio no trajeto-->
						<div>
							<h6><label for="txtBicicletaTempoMedio" class="form-label">
								<strong>G.</strong> Qual tempo médio que você leva no seu trajeto mais frequente de bicicleta?</label>
							</h6>
							<div class="mb-3">
								<textarea class="form-control" id="txtBicicletaTempoMedio" name="txtBicicletaTempoMedio" rows="3"></textarea>
							</div>
						</div>
						<br>
						<!--acidente de trânsito-->
						<div>
							<h6><strong>H.</strong> Nos últimos dois anos sofreu ou esteve envolvido em alguma ocorrência de trânsito (colisão/atropelamento) enquanto pedalava?</h6>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioOcorrenciaAcidente" id="radioOcorrenciaAcidente1" value="Sim">
								<label class="form-check-label" for="radioOcorrenciaAcidente1">Sim</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioOcorrenciaAcidente" id="radioOcorrenciaAcidente2" value="Não">
								<label class="form-check-label" for="radioOcorrenciaAcidente2">Não</label>
							</div>
							<div class="mb-3 sesim2">
								<label for="txtDescricaoOcorrencia" class="form-label">Como foi a ocorrência?</label>
								<textarea class="form-control" id="txtDescricaoOcorrencia" name="txtDescricaoOcorrencia" rows="3"></textarea>
							</div>
							<div class="mb-3 sesim2">
								<label for="txtLocalOcorrencia" class="form-label">Onde foi a ocorrência?</label>
								<textarea class="form-control" name="txtLocalOcorrencia" id="txtLocalOcorrencia" rows="3"></textarea>
							</div>
						</div>
						<br>

						<!--bicicleta com outro transporte-->

						<div>
							<h6><strong>I.</strong>Você usa a bicicleta associada a outro modo de transporte?</h6>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioUsoAssociadaOutroTransp" id="radioUsoAssociadaOutroTransp1" value="Sim">
								<label class="form-check-label" for="radioUsoAssociadaOutroTransp1">Sim</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="radioUsoAssociadaOutroTransp" id="radioUsoAssociadaOutroTransp2" value="Não">
								<label class="form-check-label" for="radioUsoAssociadaOutroTransp2">Não</label>
							</div>
							<!-- <p>Se sim, qual(quais)?</p> -->
							<div class="sesim">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="A pé" id="chkUsoOutroTransp1" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp1">
										A pé
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="Bicicleta" id="chkUsoOutroTransp2" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp2">
										Bicicleta
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="Ônibus municipal" id="chkUsoOutroTransp3" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp3">
										Ônibus municipal
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="Ônibus intermunicipal" id="chkUsoOutroTransp4" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp4">
										Ônibus intermunicipal
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="Ônibus serviço" id="chkUsoOutroTransp5" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp5">
										Ônibus serviço
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="Moto" id="chkUsoOutroTransp6" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp6">
										Moto
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="Carro próprio" id="chkUsoOutroTransp7" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp7">
										Carro próprio
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="Aplicativo(Uber/99)" id="chkUsoOutroTransp8" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp8">
										Aplicativo(Uber/99)
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="Táxi" id="chkUsoOutroTransp9" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp9">
										Táxi
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="Barco próprio" id="chkUsoOutroTransp10" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp10">
										Barco próprio
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="Barco serviço" id="chkUsoOutroTransp11" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp11">
										Barco serviço
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="Barco público" id="chkUsoOutroTransp12" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp12">
										Barco público
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="Outros" id="chkUsoOutroTransp13" name="chkUsoOutroTransp">
									<label class="form-check-label" for="chkUsoOutroTransp13">
										Outros
									</label>
									<input type="text" class="form-control" id="txtUsoOutrosTransp" name="txtUsoOutrosTransp" style="display:none">
								</div>
							</div>
						</div>
						<br>

						<!--prioridade nas vias-->

						<div>
							<div class="mb-3">
								<label for="txtViasPrioritarias" class="form-label"><h6><strong>J.</strong> Dentro do seu bairro, quais as vias que você considera como prioritárias para integrar	um sistema cicloviário?</h6></label>
								<textarea class="form-control" id="txtViasPrioritarias" name="txtViasPrioritarias" rows="3"></textarea>
							</div>
						</div>
						<br>

						<!--sugestões opcionais-->
						
						<div>
							<div class="mb-3">
								<label for="txtSugestoesMobilidade" class="form-label"><h6><strong>K.</strong> Escreva aqui as suas sugestões em relação à mobilidade por bicicletas no seu bairro.<strong style="color: #fb5141;"> Opcional</strong></h6></label>
								<textarea class="form-control" id="txtSugestoesMobilidade" name="txtSugestoesMobilidade" rows="3"></textarea>
							</div>
						</div>
					</div>
				</div>

				<div class="row" style="margin-top: 3%;">
					<!-- Site key -->
					<div class="g-recaptcha" data-callback="recaptchaCallback" data-sitekey="6Lf75TkUAAAAAEHgXPyCVl20Eh1qfSabxJh8exoX"></div>
					<!-- js recaptcha -->
					<script src="https://www.google.com/recaptcha/api.js?hl=pt-BR" async defer></script>
					<div class="col-lg-12 text-center mt-3">
						<button class="btn btn-envio botao" style="margin-bottom: 2%;" type="submit" name="Submit" id="btnEnviar" value="Enviar" disabled> Enviar </button>
					</div>
				</div>
			</form>
		</div>

		<div class="container-seta">
			<a href="#" class="seta-up" id="linkSetaUp"><img src="icon/seta-up.svg" alt="" srcset=""></a>
		</div> 

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
	</body>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js" integrity="sha512-pHVGpX7F/27yZ0ISY+VVjyULApbDlD0/X0rgGbTqCE7WFW5MezNTWG/dnhtbBuICzsd0WQPgpE4REBLv+UqChw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="scripts.js"></script>
	<script src="assets/scripts.js"></script>
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
</html>