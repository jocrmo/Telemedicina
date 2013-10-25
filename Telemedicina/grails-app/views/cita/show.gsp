
<%@ page import="telemedicina.Cita" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cita" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cita">
			
				<g:if test="${citaInstance?.fecharegistro}">
				<li class="fieldcontain">
					<span id="fecharegistro-label" class="property-label"><g:message code="cita.fecharegistro.label" default="Fecharegistro" /></span>
					
						<span class="property-value" aria-labelledby="fecharegistro-label"><g:formatDate date="${citaInstance?.fecharegistro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.fechacita}">
				<li class="fieldcontain">
					<span id="fechacita-label" class="property-label"><g:message code="cita.fechacita.label" default="Fechacita" /></span>
					
						<span class="property-value" aria-labelledby="fechacita-label"><g:formatDate date="${citaInstance?.fechacita}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.especialidad}">
				<li class="fieldcontain">
					<span id="especialidad-label" class="property-label"><g:message code="cita.especialidad.label" default="Especialidad" /></span>
					
						<span class="property-value" aria-labelledby="especialidad-label"><g:fieldValue bean="${citaInstance}" field="especialidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.motivoconsulta}">
				<li class="fieldcontain">
					<span id="motivoconsulta-label" class="property-label"><g:message code="cita.motivoconsulta.label" default="Motivoconsulta" /></span>
					
						<span class="property-value" aria-labelledby="motivoconsulta-label"><g:fieldValue bean="${citaInstance}" field="motivoconsulta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.referencia}">
				<li class="fieldcontain">
					<span id="referencia-label" class="property-label"><g:message code="cita.referencia.label" default="Referencia" /></span>
					
						<span class="property-value" aria-labelledby="referencia-label"><g:fieldValue bean="${citaInstance}" field="referencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.lugarreferencia}">
				<li class="fieldcontain">
					<span id="lugarreferencia-label" class="property-label"><g:message code="cita.lugarreferencia.label" default="Lugarreferencia" /></span>
					
						<span class="property-value" aria-labelledby="lugarreferencia-label"><g:fieldValue bean="${citaInstance}" field="lugarreferencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.idusuarioregistra}">
				<li class="fieldcontain">
					<span id="idusuarioregistra-label" class="property-label"><g:message code="cita.idusuarioregistra.label" default="Idusuarioregistra" /></span>
					
						<span class="property-value" aria-labelledby="idusuarioregistra-label"><g:fieldValue bean="${citaInstance}" field="idusuarioregistra"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.medicoMedico}">
				<li class="fieldcontain">
					<span id="medicoMedico-label" class="property-label"><g:message code="cita.medicoMedico.label" default="Medico Medico" /></span>
					
						<span class="property-value" aria-labelledby="medicoMedico-label"><g:link controller="medico" action="show" id="${citaInstance?.medicoMedico?.id}">${citaInstance?.medicoMedico?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.estadoEstadocita}">
				<li class="fieldcontain">
					<span id="estadoEstadocita-label" class="property-label"><g:message code="cita.estadoEstadocita.label" default="Estado Estadocita" /></span>
					
						<span class="property-value" aria-labelledby="estadoEstadocita-label"><g:link controller="estadoCita" action="show" id="${citaInstance?.estadoEstadocita?.id}">${citaInstance?.estadoEstadocita?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.expediente}">
				<li class="fieldcontain">
					<span id="expediente-label" class="property-label"><g:message code="cita.expediente.label" default="Expediente" /></span>
					
						<span class="property-value" aria-labelledby="expediente-label"><g:link controller="expediente" action="show" id="${citaInstance?.expediente?.id}">${citaInstance?.expediente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${citaInstance?.historiaClinica}">
				<li class="fieldcontain">
					<span id="historiaClinica-label" class="property-label"><g:message code="cita.historiaClinica.label" default="Historia Clinica" /></span>
					
						<span class="property-value" aria-labelledby="historiaClinica-label"><g:link controller="historiaClinica" action="show" id="${citaInstance?.historiaClinica?.id}">${citaInstance?.historiaClinica?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${citaInstance?.id}" />
					<g:link class="edit" action="edit" id="${citaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
