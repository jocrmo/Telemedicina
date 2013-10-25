
<%@ page import="telemedicina.Bitacora" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bitacora.label', default: 'Bitacora')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-bitacora" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-bitacora" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="idusuario" title="${message(code: 'bitacora.idusuario.label', default: 'Idusuario')}" />
					
						<g:sortableColumn property="fecha" title="${message(code: 'bitacora.fecha.label', default: 'Fecha')}" />
					
						<th><g:message code="bitacora.idoperacionOperacion.label" default="Idoperacion Operacion" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bitacoraInstanceList}" status="i" var="bitacoraInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bitacoraInstance.id}">${fieldValue(bean: bitacoraInstance, field: "idusuario")}</g:link></td>
					
						<td><g:formatDate date="${bitacoraInstance.fecha}" /></td>
					
						<td>${fieldValue(bean: bitacoraInstance, field: "idoperacionOperacion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bitacoraInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
