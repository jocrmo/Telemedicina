
<%@ page import="telemedicina.Bitacora" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bitacora.label', default: 'Bitacora')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bitacora" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bitacora" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bitacora">
			
				<g:if test="${bitacoraInstance?.idusuario}">
				<li class="fieldcontain">
					<span id="idusuario-label" class="property-label"><g:message code="bitacora.idusuario.label" default="Idusuario" /></span>
					
						<span class="property-value" aria-labelledby="idusuario-label"><g:fieldValue bean="${bitacoraInstance}" field="idusuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bitacoraInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="bitacora.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${bitacoraInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bitacoraInstance?.idoperacionOperacion}">
				<li class="fieldcontain">
					<span id="idoperacionOperacion-label" class="property-label"><g:message code="bitacora.idoperacionOperacion.label" default="Idoperacion Operacion" /></span>
					
						<span class="property-value" aria-labelledby="idoperacionOperacion-label"><g:link controller="operacion" action="show" id="${bitacoraInstance?.idoperacionOperacion?.id}">${bitacoraInstance?.idoperacionOperacion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${bitacoraInstance?.id}" />
					<g:link class="edit" action="edit" id="${bitacoraInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
