
<%@ page import="telemedicina.Medico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'medico.label', default: 'Medico')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-medico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-medico" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="codigo" title="${message(code: 'medico.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="cedula" title="${message(code: 'medico.cedula.label', default: 'Cedula')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'medico.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido1" title="${message(code: 'medico.apellido1.label', default: 'Apellido1')}" />
					
						<g:sortableColumn property="apellido2" title="${message(code: 'medico.apellido2.label', default: 'Apellido2')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'medico.telefono.label', default: 'Telefono')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${medicoInstanceList}" status="i" var="medicoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${medicoInstance.id}">${fieldValue(bean: medicoInstance, field: "codigo")}</g:link></td>
					
						<td>${fieldValue(bean: medicoInstance, field: "cedula")}</td>
					
						<td>${fieldValue(bean: medicoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: medicoInstance, field: "apellido1")}</td>
					
						<td>${fieldValue(bean: medicoInstance, field: "apellido2")}</td>
					
						<td>${fieldValue(bean: medicoInstance, field: "telefono")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${medicoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
