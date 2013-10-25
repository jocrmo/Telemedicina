<%@ page import="telemedicina.Especialidad" %>



<div class="fieldcontain ${hasErrors(bean: especialidadInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="especialidad.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" maxlength="45" value="${especialidadInstance?.codigo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: especialidadInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="especialidad.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="100" required="" value="${especialidadInstance?.nombre}"/>
</div>

