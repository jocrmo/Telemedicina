<%@ page import="telemedicina.EstadoCita" %>



<div class="fieldcontain ${hasErrors(bean: estadoCitaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="estadoCita.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="45" value="${estadoCitaInstance?.descripcion}"/>
</div>

