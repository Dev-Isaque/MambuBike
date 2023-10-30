<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../include/Conn-G.asp"-->
<!--#include file="../include/aspjson.asp"-->

<%
vnm_participante 		  		= Request.Form("txtNome")
vds_email		 		  		= Request.Form("txtEmail")
vds_faixa_etaria 		  		= Request.Form("radioFaixaEtaria")
vds_genero		 		  		= Request.Form("radioGenero")
vds_escolaridade 		  		= Request.Form("radioEscolaridade")
vds_cor			 		  		= Request.Form("radioCor")
vid_bairro		 		  		= Request.Form("SelBairro")
vsn_diversidade_funcional 		= Request.Form("radioDiversidadeFunc")
vds_diversidade_funcional 		= Request.Form("txtDiversidadeFunc")
vnr_telefone			  		= Request.Form("txtTelefone")
vds_tipo_transporte		  		= Request.Form("radioTipoTransporte")
vds_tipo_transporte_outro 		= Request.Form("txtTipoTransporteOutros")
vsn_sente_seguro		  		= Request.Form("radioSenteSeguro")
vds_sente_seguro		  		= Request.Form("txtSenteSeguro")
vds_transportes_utiliza	  		= Request.Form("chkTransportesUtiliza")
vds_transportes_utiliza_outros  = Request.Form("txtTransportesUtilizaOutros")
vsn_sente_seguro_transportes	= Request.Form("radioSenteSeguroTransp")
vds_sente_seguro_transportes	= Request.Form("txtSenteSeguroTransp")

'vds_sai_atividades
'vds_qts_dias_semana
'vds_tipo_transp_mais_utiliza
'vds_melhorar_a_pe
'vds_melhorar_bicicleta
'vds_melhorar_transp_publico
'vds_melhorar_transp_individual
'vds_bicicleta_dias_uso
'vds_bicicleta_motivo_viagem
'vds_bicicleta_qtas_pessoas
'vsn_bicicleta_inst_trabalho
'vds_bicicleta_pq_uso
'vds_bicicleta_desafios_uso
'vds_bicicleta_tempo_medio
'vsn_dois_anos_ocorrencia
'vds_descricao_ocorrencia
'vds_local_ocorrencia
'vsn_uso_com_outro_transp
'vds_uso_qual_outro_transp
'vds_vias_prioritarias
'vds_sugestoes_mobilidade

vSql = "INSERT INTO TB_PMAR_SEOPM_QUESTIONARIO_MAMBUBIKE_2023 (nm_participante,ds_faixa_etaria,ds_genero,ds_escolaridade,ds_cor,id_bairro,sn_diversidade_funcional,ds_diversidade_funcional,nr_telefone " &_
       ",ds_email,ds_tipo_transporte,ds_tipo_transporte_outro,sn_sente_seguro,ds_sente_seguro_pq,ds_transportes_utiliza,ds_transportes_utiliza_outros,sn_sente_seguro_transportes,ds_sente_seguro_transportes_pq " &_
       ",ds_sai_atividades,ds_qts_dias_semana,ds_tipo_transp_mais_utiliza,ds_melhorar_a_pe,ds_melhorar_bicicleta,ds_melhorar_transp_publico,ds_melhorar_transp_individual,ds_bicicleta_dias_uso,ds_bicicleta_motivo_viagem " &_
       ",ds_bicicleta_qtas_pessoas,sn_bicicleta_inst_trabalho,ds_bicicleta_pq_uso,ds_bicicleta_desafios_uso,ds_bicicleta_tempo_medio,sn_dois_anos_ocorrencia,ds_descricao_ocorrencia,ds_local_ocorrencia,sn_uso_com_outro_transp " &_
       ",ds_uso_qual_outro_transp,ds_vias_prioritarias,ds_sugestoes_mobilidade) " &_
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
            "','" & vds_sente_seguro_pq &_
            "','" & vds_transportes_utiliza &_
            "','" & vds_transportes_utiliza_outros &_
            "','" & vsn_sente_seguro_transportes &_
            "','" & vds_sente_seguro_transportes_pq &_
            "','" & vds_sai_atividades &_
            "','" & vds_qts_dias_semana &_
            "','" & vds_tipo_transp_mais_utiliza &_
            "','" & vds_melhorar_a_pe &_
            "','" & vds_melhorar_bicicleta &_
            "','" & vds_melhorar_transp_publico &_
            "','" & vds_melhorar_transp_individual &_
            "','" & vds_bicicleta_dias_uso &_
            "','" & vds_bicicleta_motivo_viagem &_
            "','" & vds_bicicleta_qtas_pessoas &_
            "','" & vsn_bicicleta_inst_trabalho &_
            "','" & vds_bicicleta_pq_uso &_
            "','" & vds_bicicleta_desafios_uso &_
            "','" & vds_bicicleta_tempo_medio &_
            "','" & vsn_dois_anos_ocorrencia &_
            "','" & vds_descricao_ocorrencia &_
            "','" & vds_local_ocorrencia &_
            "','" & vsn_uso_com_outro_transp &_
            "','" & vds_uso_qual_outro_transp &_
            "','" & vds_vias_prioritarias &_
            "','" & vds_sugestoes_mobilidade & "')"
%>
<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Documento sem título</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
	<link rel="stylesheet" href="style.css" type="text/css">
</head>

<body>
<form action="participe.asp" method="POST">
	Formulário <i class="bi bi-x-circle"></i>

	<!--Nome-->
	<div class="mb-3">
		<label for="txtNome" class="form-label">Nome</label>
		<input type="text" class="form-control" name="txtNome" id="txtNome" required>
	</div>
	<br>

	<!--Email-->
	<div class="mb-3">
		<label for="txtEmail" class="form-label">E-mail</label>
		<input type="email" class="form-control" name="txtEmail" id="txtEmail" required>
	</div>

	<!--Faixa Etaria-->

	<div style="display: flex; flex-direction: row;">
		<h6>Faixa etária:</h6>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="radioFaixaEtaria" id="radioFaixaEtaria1" value="0-12 anos">
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

	<!-- Generos -->

	<div style="display: flex; flex-direction: row;">
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

	<div style="display: flex; flex-direction: row;">
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

	<div style="display: flex; flex-direction: row;">
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

	<div style="display: flex; flex-direction: row;">
		<h6>Bairro onde mora: </h6>
		<select class="form-select" id="SelBairro" name="SelBairro" required>
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
	</div>
	<br>

	<!--Diversidade funcional-->

	<div style="display: flex; flex-direction: row;">
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
	<div class="mb-3">
		<label for="txtDiversidadeFunc" class="form-label">Se sim, quem e qual?</label>
		<textarea class="form-control" id="txtDiversidadeFunc" name="txtDiversidadeFunc" rows="3"></textarea>
	</div>
	<br>

	<!--Telefone/Zap-->

	<div class="mb-3">
		<label for="txtTelefone" class="form-label">Telefone/Whatsapp:</label>
		<input type="text" class="form-control" id="txtTelefone" name="txtTelefone" placeholder="(**) *****-****">
	</div>
	<br>
	<br>
	<br>

	<!--tipo de transporte no bairro-->

	<div>
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
			<label class="form-check-label" for="radioTipoTransporte3">Taxi</label>
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
			<input type="text" class="form-control" id="txtTipoTransporteOutros" name="txtTipoTransporteOutros">
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
			<input type="text" class="form-control" id="txtSenteSeguro" name="txtSenteSeguro">
		</div>
	</div>
	<br>

	<!--Outros transportes-->

	<div>
		<h6><strong>3.</strong> Quais <strong>outros</strong> tipos de transporte você utiliza dentro do seu bairro</h6>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="A pé" id="chkTransportesUtiliza1" name="chkTransportesUtiliza">
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
				Outros:
			</label>
			<input type="text" class="form-control" id="txtTransportesUtilizaOutros" name="txtTransportesUtilizaOutros">
		</div>
	</div>
	<br>

	<!--Você se sente seguro com esses transportes-->

	<div>
		<h6><strong>4.</strong> Você se sente seguro ao se deslocar utilizando este(s) meio(s) de transporte?</h6>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="radioSenteSeguroTransp" id="radioSenteSeguroTransp1" value="Sim">
			<label class="form-check-label" for="radioSenteSeguroTransp1">Sim. Por quê?</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="radioSenteSeguroTransp" id="radioSenteSeguroTransp2" value="Não">
			<label class="form-check-label" for="radioSenteSeguroTransp2">Não. Por quê?</label>
			<input type="text" class="form-control" name="txtSenteSeguroTransp" id="txtSenteSeguroTransp">
		</div>
	</div>
	<br>

	<!--Atividades do bairros-->

	<div class="mb-3">
		<label for="exampleFormControlTextarea1" class="form-label"><strong>5.</strong> Você sai do seu bairro para
			quais atividades?</label>
		<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
	</div>
	<br>

	<!--dias da semana-->

	<div>
		<h6><strong>6.</strong> Quantos dias na semana?</h6>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">1 dia</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
			<label class="form-check-label" for="inlineRadio2">2 dias</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">3 dias</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
			<label class="form-check-label" for="inlineRadio2">4 dias</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">5 dias</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
			<label class="form-check-label" for="inlineRadio2">6 dias</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">Todos os dias</label>
		</div>
	</div>
	<br>

	<!--transporte para sair do bairro-->

	<div>
		<h6><strong>7.</strong> Qual tipo de transporte você <strong>mais utiliza</strong> para sair do seu bairro?</h6>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">A pé</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
			<label class="form-check-label" for="inlineRadio2">Ônibus serviço</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
			<label class="form-check-label" for="inlineRadio3">Taxi</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
			<label class="form-check-label" for="inlineRadio3">Bicicleta</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
			<label class="form-check-label" for="inlineRadio3">Moto</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
			<label class="form-check-label" for="inlineRadio3">Barco próprio</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
			<label class="form-check-label" for="inlineRadio3">Ônibus municipal</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
			<label class="form-check-label" for="inlineRadio3">Carro próprio</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
			<label class="form-check-label" for="inlineRadio3">Barco serviço</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
			<label class="form-check-label" for="inlineRadio3">Ônibus intermunicipal</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
			<label class="form-check-label" for="inlineRadio3">Aplicativo (Uber/99)</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
			<label class="form-check-label" for="inlineRadio3">Barco público</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
			<label class="form-check-label" for="inlineRadio3">Outros</label>
			<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
	</div>
	<br>

	<!--melhorar no deslocamento-->

	<div>
		<h6><strong>8.</strong> O que você acha que poderia melhorar em relação aos seus deslocamentos no bairro e na
			cidade, em relação aos seguintes aspectos:</h6>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">A pé:</label>
			<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">Bicicleta</label>
			<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">Transporte público</label>
			<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">Transporte individual</label>
			<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
	</div>
	<br>
	<br>
	<br>
	<!--CICLISTAS-->
	<h5 style="text-align: center;">Perguntas para ciclistas</h5>
	<p style="text-align: center; color: rgb(30, 148, 30);">(que responderam bicicleta nas perguntas 1, 3 ou 7)</p>
	<br>
	<!--dias usando a bike-->
	<div>
		<h6><strong>A.</strong> Quantos dias por semana você costuma usar a bicicleta?</h6>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">1 dia</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
			<label class="form-check-label" for="inlineRadio2">2 dias</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">3 dias</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
			<label class="form-check-label" for="inlineRadio2">4 dias</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">5 dias</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
			<label class="form-check-label" for="inlineRadio2">6 dias</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">Todos os dias</label>
		</div>
	</div>
	<br>
	<!--motivo-->
	<div>
		<h6><strong>B.</strong> Qual o motivo da viagem?</h6>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Trabalho
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Escola
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Compras
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Lazer
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Ir para o ponto de ônibus
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Outro:
			</label>
			<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
	</div>
	<br>
	<!--Levar na bike-->
	<div>
		<h6><strong>C.</strong> Quantas pessoas você costuma levar na bike?</h6>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">Ando sozinho(a)</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
			<label class="form-check-label" for="inlineRadio2">21 passageiro(a)</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">2 ou + passageiros(as)</label>
		</div>
	</div>
	<br>
	<!--bike para trabalho-->
	<div>
		<h6><strong>D.</strong> Você usa a bicicleta como instrumento de trabalho?</h6>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">Sim</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
			<label class="form-check-label" for="inlineRadio2">Não</label>
		</div>
	</div>
	</div>
	<br>
	<!--pq usa a bike-->
	<div>
		<h6><strong>E.</strong> Por que você usa a bicicleta?</h6>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Economia
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Conforto
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Flexibilidade de horário
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Ônibus não satisfaz
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Deslocamento muito curto
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Porque faz bem para saúde
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Outro:
			</label>
			<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
	</div>
	<br>
	<!--principais desafios de bike-->
	<div>
		<h6><strong>F.</strong> Quais são os principais desafios que você enfreta ao usar a bicicleta?</h6>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Falta de infraestrutura
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Falta de respeito no trânsito
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Falta de local para estacionar a bicicleta
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Falta de sombreamento
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Outro:
			</label>
			<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
	</div>
	<br>
	<!--tempo médio no trajeto-->
	<div>
		<h6><strong>G.</strong> Qual tempo médio que você leva no seu trajeto mais frequente de bicicleta?</h6>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label"></label>
			<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
	</div>
	<br>
	<!--acidente de trânsito-->
	<div>
		<h6><strong>H.</strong> Nos últimos dois anos sofreu ou esteve envolvido em alguma ocorrência de trânsito
			(colisão/atropelamento) enquanto pedalava?</h6>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">Sim</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
			<label class="form-check-label" for="inlineRadio2">Não</label>
		</div>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">Como foi a ocorrência?</label>
			<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label"></label>
			<textarea class="form-control" id="exampleFormControlTextarea1" rows="3">Onde foi a ocorrência?</textarea>
		</div>
	</div>
	<br>
	<!--bicicleta com outro transporte-->
	<div>
		<h6>Você usa a bicicleta associada a outro modo de transporte?</h6>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			<label class="form-check-label" for="inlineRadio1">Sim</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
			<label class="form-check-label" for="inlineRadio2">Não</label>
		</div>
		<p>Se sim, qual?</p>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				A pé
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Bicicleta
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Ônibus municipal
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Ônibus intermunicipal
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Ônibus serviço
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Moto
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Carro próprio
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Aplicativo(Uber/99)
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Táxi
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Barco próprio
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Barco serviço
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
			<label class="form-check-label" for="flexCheckChecked">
				Barco público
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				Outros:
			</label>
			<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
	</div>
	<br>
	<!--prioridade nas vias-->
	<div>
		<h6><strong>I.</strong> Dentro do seu bairros, quais as vias que você considera como prioritárias para integrar
			um sistema cicloviário?</h6>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label"></label>
			<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
	</div>
	<br>
	<!--sugestões opcionais-->
	<div>
		<h6><strong>J.</strong> Escreva aqui as suas sugestões em relação à mobilidade por bicicletas no seu bairro.
			<strong style="color: rgb(30, 148, 30);">Opcional</strong></h6>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label"></label>
			<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
	</div>

<input type="submit" name="Submit" id="btnEnviar" class="btn btn-large btn-primary" value="Enviar">

</form>

</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</html>