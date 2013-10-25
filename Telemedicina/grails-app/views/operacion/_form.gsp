<%@ page import="telemedicina.Operacion" %>



<div class="fieldcontain ${hasErrors(bean: operacionInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="operacion.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="100" value="${operacionInstance?.nombre}"/>
</div>

