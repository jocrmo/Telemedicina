
<%@ page import="telemedicina.Medico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'medico.label', default: 'Medico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-medico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-medico" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list medico">
			
				<g:if test="${medicoInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="medico.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${medicoInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.cedula}">
				<li class="fieldcontain">
					<span id="cedula-label" class="property-label"><g:message code="medico.cedula.label" default="Cedula" /></span>
					
						<span class="property-value" aria-labelledby="cedula-label"><g:fieldValue bean="${medicoInstance}" field="cedula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="medico.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${medicoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.apellido1}">
				<li class="fieldcontain">
					<span id="apellido1-label" class="property-label"><g:message code="medico.apellido1.label" default="Apellido1" /></span>
					
						<span class="property-value" aria-labelledby="apellido1-label"><g:fieldValue bean="${medicoInstance}" field="apellido1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.apellido2}">
				<li class="fieldcontain">
					<span id="apellido2-label" class="property-label"><g:message code="medico.apellido2.label" default="Apellido2" /></span>
					
						<span class="property-value" aria-labelledby="apellido2-label"><g:fieldValue bean="${medicoInstance}" field="apellido2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="medico.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${medicoInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.telefonoOficina}">
				<li class="fieldcontain">
					<span id="telefonoOficina-label" class="property-label"><g:message code="medico.telefonoOficina.label" default="Telefono Oficina" /></span>
					
						<span class="property-value" aria-labelledby="telefonoOficina-label"><g:fieldValue bean="${medicoInstance}" field="telefonoOficina"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.ext}">
				<li class="fieldcontain">
					<span id="ext-label" class="property-label"><g:message code="medico.ext.label" default="Ext" /></span>
					
						<span class="property-value" aria-labelledby="ext-label"><g:fieldValue bean="${medicoInstance}" field="ext"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.movil}">
				<li class="fieldcontain">
					<span id="movil-label" class="property-label"><g:message code="medico.movil.label" default="Movil" /></span>
					
						<span class="property-value" aria-labelledby="movil-label"><g:fieldValue bean="${medicoInstance}" field="movil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="medico.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${medicoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.idcentromedicoCentromedico}">
				<li class="fieldcontain">
					<span id="idcentromedicoCentromedico-label" class="property-label"><g:message code="medico.idcentromedicoCentromedico.label" default="Idcentromedico Centromedico" /></span>
					
						<span class="property-value" aria-labelledby="idcentromedicoCentromedico-label"><g:link controller="centroMedico" action="show" id="${medicoInstance?.idcentromedicoCentromedico?.id}">${medicoInstance?.idcentromedicoCentromedico?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.idespecialidadEspecialidad}">
				<li class="fieldcontain">
					<span id="idespecialidadEspecialidad-label" class="property-label"><g:message code="medico.idespecialidadEspecialidad.label" default="Idespecialidad Especialidad" /></span>
					
						<span class="property-value" aria-labelledby="idespecialidadEspecialidad-label"><g:link controller="especialidad" action="show" id="${medicoInstance?.idespecialidadEspecialidad?.id}">${medicoInstance?.idespecialidadEspecialidad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${medicoInstance?.id}" />
					<g:link class="edit" action="edit" id="${medicoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
