<%@ page import="telemedicina.CentroMedico" %>



<div class="fieldcontain ${hasErrors(bean: centroMedicoInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="centroMedico.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigo" maxlength="45" required="" value="${centroMedicoInstance?.codigo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: centroMedicoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="centroMedico.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="100" required="" value="${centroMedicoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: centroMedicoInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="centroMedico.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" maxlength="45" required="" value="${centroMedicoInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: centroMedicoInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="centroMedico.telefono.label" default="Telefono" />
		
	</label>
	<g:field name="telefono" type="number" value="${centroMedicoInstance.telefono}"/>
</div>

