<%@ page import="telemedicina.Cita" %>



<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'fecharegistro', 'error')} ">
	<label for="fecharegistro">
		<g:message code="cita.fecharegistro.label" default="Fecharegistro" />
		
	</label>
	<g:datePicker name="fecharegistro" precision="day"  value="${citaInstance?.fecharegistro}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'fechacita', 'error')} ">
	<label for="fechacita">
		<g:message code="cita.fechacita.label" default="Fechacita" />
		
	</label>
	<g:datePicker name="fechacita" precision="day"  value="${citaInstance?.fechacita}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'especialidad', 'error')} required">
	<label for="especialidad">
		<g:message code="cita.especialidad.label" default="Especialidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="especialidad" type="number" max="2147483647" value="${citaInstance.especialidad}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'motivoconsulta', 'error')} required">
	<label for="motivoconsulta">
		<g:message code="cita.motivoconsulta.label" default="Motivoconsulta" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="motivoconsulta" required="" value="${citaInstance?.motivoconsulta}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'referencia', 'error')} ">
	<label for="referencia">
		<g:message code="cita.referencia.label" default="Referencia" />
		
	</label>
	<g:textField name="referencia" value="${citaInstance?.referencia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'lugarreferencia', 'error')} ">
	<label for="lugarreferencia">
		<g:message code="cita.lugarreferencia.label" default="Lugarreferencia" />
		
	</label>
	<g:textField name="lugarreferencia" value="${citaInstance?.lugarreferencia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'idusuarioregistra', 'error')} ">
	<label for="idusuarioregistra">
		<g:message code="cita.idusuarioregistra.label" default="Idusuarioregistra" />
		
	</label>
	<g:textField name="idusuarioregistra" maxlength="45" value="${citaInstance?.idusuarioregistra}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'medicoMedico', 'error')} required">
	<label for="medicoMedico">
		<g:message code="cita.medicoMedico.label" default="Medico Medico" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="medicoMedico" name="medicoMedico.id" from="${telemedicina.Medico.list()}" optionKey="id" required="" value="${citaInstance?.medicoMedico?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'estadoEstadocita', 'error')} required">
	<label for="estadoEstadocita">
		<g:message code="cita.estadoEstadocita.label" default="Estado Estadocita" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estadoEstadocita" name="estadoEstadocita.id" from="${telemedicina.EstadoCita.list()}" optionKey="id" required="" value="${citaInstance?.estadoEstadocita?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'expediente', 'error')} required">
	<label for="expediente">
		<g:message code="cita.expediente.label" default="Expediente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="expediente" name="expediente.id" from="${telemedicina.Expediente.list()}" optionKey="id" required="" value="${citaInstance?.expediente?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'historiaClinica', 'error')} required">
	<label for="historiaClinica">
		<g:message code="cita.historiaClinica.label" default="Historia Clinica" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="historiaClinica" name="historiaClinica.id" from="${telemedicina.HistoriaClinica.list()}" optionKey="id" required="" value="${citaInstance?.historiaClinica?.id}" class="many-to-one"/>
</div>

