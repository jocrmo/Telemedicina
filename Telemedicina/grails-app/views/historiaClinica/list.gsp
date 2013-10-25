
<%@ page import="telemedicina.HistoriaClinica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'historiaClinica.label', default: 'HistoriaClinica')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-historiaClinica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-historiaClinica" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="historiaClinica.especialidad.label" default="Especialidad" /></th>
					
						<g:sortableColumn property="lugar" title="${message(code: 'historiaClinica.lugar.label', default: 'Lugar')}" />
					
						<g:sortableColumn property="fecharegistro" title="${message(code: 'historiaClinica.fecharegistro.label', default: 'Fecharegistro')}" />
					
						<g:sortableColumn property="notasinterrogatorio" title="${message(code: 'historiaClinica.notasinterrogatorio.label', default: 'Notasinterrogatorio')}" />
					
						<g:sortableColumn property="padecimientoactual" title="${message(code: 'historiaClinica.padecimientoactual.label', default: 'Padecimientoactual')}" />
					
						<g:sortableColumn property="antecedenteshereditarios" title="${message(code: 'historiaClinica.antecedenteshereditarios.label', default: 'Antecedenteshereditarios')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${historiaClinicaInstanceList}" status="i" var="historiaClinicaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${historiaClinicaInstance.id}">${fieldValue(bean: historiaClinicaInstance, field: "especialidad")}</g:link></td>
					
						<td>${fieldValue(bean: historiaClinicaInstance, field: "lugar")}</td>
					
						<td><g:formatDate date="${historiaClinicaInstance.fecharegistro}" /></td>
					
						<td>${fieldValue(bean: historiaClinicaInstance, field: "notasinterrogatorio")}</td>
					
						<td>${fieldValue(bean: historiaClinicaInstance, field: "padecimientoactual")}</td>
					
						<td>${fieldValue(bean: historiaClinicaInstance, field: "antecedenteshereditarios")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${historiaClinicaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
