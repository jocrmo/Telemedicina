
<%@ page import="telemedicina.HistoriaClinica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'historiaClinica.label', default: 'HistoriaClinica')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-historiaClinica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-historiaClinica" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list historiaClinica">
			
				<g:if test="${historiaClinicaInstance?.especialidad}">
				<li class="fieldcontain">
					<span id="especialidad-label" class="property-label"><g:message code="historiaClinica.especialidad.label" default="Especialidad" /></span>
					
						<span class="property-value" aria-labelledby="especialidad-label"><g:link controller="especialidad" action="show" id="${historiaClinicaInstance?.especialidad?.id}">${historiaClinicaInstance?.especialidad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.lugar}">
				<li class="fieldcontain">
					<span id="lugar-label" class="property-label"><g:message code="historiaClinica.lugar.label" default="Lugar" /></span>
					
						<span class="property-value" aria-labelledby="lugar-label"><g:fieldValue bean="${historiaClinicaInstance}" field="lugar"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.fecharegistro}">
				<li class="fieldcontain">
					<span id="fecharegistro-label" class="property-label"><g:message code="historiaClinica.fecharegistro.label" default="Fecharegistro" /></span>
					
						<span class="property-value" aria-labelledby="fecharegistro-label"><g:formatDate date="${historiaClinicaInstance?.fecharegistro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.notasinterrogatorio}">
				<li class="fieldcontain">
					<span id="notasinterrogatorio-label" class="property-label"><g:message code="historiaClinica.notasinterrogatorio.label" default="Notasinterrogatorio" /></span>
					
						<span class="property-value" aria-labelledby="notasinterrogatorio-label"><g:fieldValue bean="${historiaClinicaInstance}" field="notasinterrogatorio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.padecimientoactual}">
				<li class="fieldcontain">
					<span id="padecimientoactual-label" class="property-label"><g:message code="historiaClinica.padecimientoactual.label" default="Padecimientoactual" /></span>
					
						<span class="property-value" aria-labelledby="padecimientoactual-label"><g:fieldValue bean="${historiaClinicaInstance}" field="padecimientoactual"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.antecedenteshereditarios}">
				<li class="fieldcontain">
					<span id="antecedenteshereditarios-label" class="property-label"><g:message code="historiaClinica.antecedenteshereditarios.label" default="Antecedenteshereditarios" /></span>
					
						<span class="property-value" aria-labelledby="antecedenteshereditarios-label"><g:fieldValue bean="${historiaClinicaInstance}" field="antecedenteshereditarios"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.diagnostico}">
				<li class="fieldcontain">
					<span id="diagnostico-label" class="property-label"><g:message code="historiaClinica.diagnostico.label" default="Diagnostico" /></span>
					
						<span class="property-value" aria-labelledby="diagnostico-label"><g:fieldValue bean="${historiaClinicaInstance}" field="diagnostico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.tratamiento}">
				<li class="fieldcontain">
					<span id="tratamiento-label" class="property-label"><g:message code="historiaClinica.tratamiento.label" default="Tratamiento" /></span>
					
						<span class="property-value" aria-labelledby="tratamiento-label"><g:fieldValue bean="${historiaClinicaInstance}" field="tratamiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.referencias}">
				<li class="fieldcontain">
					<span id="referencias-label" class="property-label"><g:message code="historiaClinica.referencias.label" default="Referencias" /></span>
					
						<span class="property-value" aria-labelledby="referencias-label"><g:fieldValue bean="${historiaClinicaInstance}" field="referencias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.medico}">
				<li class="fieldcontain">
					<span id="medico-label" class="property-label"><g:message code="historiaClinica.medico.label" default="Medico" /></span>
					
						<span class="property-value" aria-labelledby="medico-label"><g:link controller="medico" action="show" id="${historiaClinicaInstance?.medico?.id}">${historiaClinicaInstance?.medico?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.cita}">
				<li class="fieldcontain">
					<span id="cita-label" class="property-label"><g:message code="historiaClinica.cita.label" default="Cita" /></span>
					
						<span class="property-value" aria-labelledby="cita-label"><g:link controller="cita" action="show" id="${historiaClinicaInstance?.cita?.id}">${historiaClinicaInstance?.cita?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${historiaClinicaInstance?.id}" />
					<g:link class="edit" action="edit" id="${historiaClinicaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
