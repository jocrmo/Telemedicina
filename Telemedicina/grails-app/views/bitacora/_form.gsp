<%@ page import="telemedicina.Bitacora" %>



<div class="fieldcontain ${hasErrors(bean: bitacoraInstance, field: 'idusuario', 'error')} required">
	<label for="idusuario">
		<g:message code="bitacora.idusuario.label" default="Idusuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idusuario" type="number" value="${bitacoraInstance.idusuario}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bitacoraInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="bitacora.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${bitacoraInstance?.fecha}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: bitacoraInstance, field: 'idoperacionOperacion', 'error')} required">
	<label for="idoperacionOperacion">
		<g:message code="bitacora.idoperacionOperacion.label" default="Idoperacion Operacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="idoperacionOperacion" name="idoperacionOperacion.id" from="${telemedicina.Operacion.list()}" optionKey="id" required="" value="${bitacoraInstance?.idoperacionOperacion?.id}" class="many-to-one"/>
</div>

