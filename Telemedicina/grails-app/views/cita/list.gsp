
<%@ page import="telemedicina.Cita" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cita" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fecharegistro" title="${message(code: 'cita.fecharegistro.label', default: 'Fecharegistro')}" />
					
						<g:sortableColumn property="fechacita" title="${message(code: 'cita.fechacita.label', default: 'Fechacita')}" />
					
						<g:sortableColumn property="especialidad" title="${message(code: 'cita.especialidad.label', default: 'Especialidad')}" />
					
						<g:sortableColumn property="motivoconsulta" title="${message(code: 'cita.motivoconsulta.label', default: 'Motivoconsulta')}" />
					
						<g:sortableColumn property="referencia" title="${message(code: 'cita.referencia.label', default: 'Referencia')}" />
					
						<g:sortableColumn property="lugarreferencia" title="${message(code: 'cita.lugarreferencia.label', default: 'Lugarreferencia')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${citaInstanceList}" status="i" var="citaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${citaInstance.id}">${fieldValue(bean: citaInstance, field: "fecharegistro")}</g:link></td>
					
						<td><g:formatDate date="${citaInstance.fechacita}" /></td>
					
						<td>${fieldValue(bean: citaInstance, field: "especialidad")}</td>
					
						<td>${fieldValue(bean: citaInstance, field: "motivoconsulta")}</td>
					
						<td>${fieldValue(bean: citaInstance, field: "referencia")}</td>
					
						<td>${fieldValue(bean: citaInstance, field: "lugarreferencia")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${citaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
