<%@ page import="telemedicina.HistoriaClinica" %>



<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'especialidad', 'error')} required">
	<label for="especialidad">
		<g:message code="historiaClinica.especialidad.label" default="Especialidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="especialidad" name="especialidad.id" from="${telemedicina.Especialidad.list()}" optionKey="id" required="" value="${historiaClinicaInstance?.especialidad?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'lugar', 'error')} ">
	<label for="lugar">
		<g:message code="historiaClinica.lugar.label" default="Lugar" />
		
	</label>
	<g:textField name="lugar" value="${historiaClinicaInstance?.lugar}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'fecharegistro', 'error')} required">
	<label for="fecharegistro">
		<g:message code="historiaClinica.fecharegistro.label" default="Fecharegistro" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecharegistro" precision="day"  value="${historiaClinicaInstance?.fecharegistro}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'notasinterrogatorio', 'error')} ">
	<label for="notasinterrogatorio">
		<g:message code="historiaClinica.notasinterrogatorio.label" default="Notasinterrogatorio" />
		
	</label>
	<g:textField name="notasinterrogatorio" value="${historiaClinicaInstance?.notasinterrogatorio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'padecimientoactual', 'error')} ">
	<label for="padecimientoactual">
		<g:message code="historiaClinica.padecimientoactual.label" default="Padecimientoactual" />
		
	</label>
	<g:textField name="padecimientoactual" value="${historiaClinicaInstance?.padecimientoactual}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'antecedenteshereditarios', 'error')} ">
	<label for="antecedenteshereditarios">
		<g:message code="historiaClinica.antecedenteshereditarios.label" default="Antecedenteshereditarios" />
		
	</label>
	<g:textField name="antecedenteshereditarios" value="${historiaClinicaInstance?.antecedenteshereditarios}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'diagnostico', 'error')} ">
	<label for="diagnostico">
		<g:message code="historiaClinica.diagnostico.label" default="Diagnostico" />
		
	</label>
	<g:textField name="diagnostico" value="${historiaClinicaInstance?.diagnostico}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'tratamiento', 'error')} ">
	<label for="tratamiento">
		<g:message code="historiaClinica.tratamiento.label" default="Tratamiento" />
		
	</label>
	<g:textField name="tratamiento" value="${historiaClinicaInstance?.tratamiento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'referencias', 'error')} ">
	<label for="referencias">
		<g:message code="historiaClinica.referencias.label" default="Referencias" />
		
	</label>
	<g:textField name="referencias" value="${historiaClinicaInstance?.referencias}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'medico', 'error')} required">
	<label for="medico">
		<g:message code="historiaClinica.medico.label" default="Medico" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="medico" name="medico.id" from="${telemedicina.Medico.list()}" optionKey="id" required="" value="${historiaClinicaInstance?.medico?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'cita', 'error')} required">
	<label for="cita">
		<g:message code="historiaClinica.cita.label" default="Cita" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cita" name="cita.id" from="${telemedicina.Cita.list()}" optionKey="id" required="" value="${historiaClinicaInstance?.cita?.id}" class="many-to-one"/>
</div>

