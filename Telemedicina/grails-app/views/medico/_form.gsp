<%@ page import="telemedicina.Medico" %>



<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="medico.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigo" type="number" max="2147483647" value="${medicoInstance.codigo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="medico.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cedula" maxlength="45" required="" value="${medicoInstance?.cedula}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="medico.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="45" required="" value="${medicoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'apellido1', 'error')} required">
	<label for="apellido1">
		<g:message code="medico.apellido1.label" default="Apellido1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido1" maxlength="45" required="" value="${medicoInstance?.apellido1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'apellido2', 'error')} ">
	<label for="apellido2">
		<g:message code="medico.apellido2.label" default="Apellido2" />
		
	</label>
	<g:textField name="apellido2" maxlength="45" value="${medicoInstance?.apellido2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="medico.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefono" type="number" max="2147483647" value="${medicoInstance.telefono}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'telefonoOficina', 'error')} ">
	<label for="telefonoOficina">
		<g:message code="medico.telefonoOficina.label" default="Telefono Oficina" />
		
	</label>
	<g:field name="telefonoOficina" type="number" max="2147483647" value="${medicoInstance.telefonoOficina}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'ext', 'error')} ">
	<label for="ext">
		<g:message code="medico.ext.label" default="Ext" />
		
	</label>
	<g:field name="ext" type="number" max="2147483647" value="${medicoInstance.ext}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'movil', 'error')} ">
	<label for="movil">
		<g:message code="medico.movil.label" default="Movil" />
		
	</label>
	<g:field name="movil" type="number" max="2147483647" value="${medicoInstance.movil}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="medico.email.label" default="Email" />
		
	</label>
	<g:textField name="email" maxlength="45" value="${medicoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'idcentromedicoCentromedico', 'error')} required">
	<label for="idcentromedicoCentromedico">
		<g:message code="medico.idcentromedicoCentromedico.label" default="Idcentromedico Centromedico" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="idcentromedicoCentromedico" name="idcentromedicoCentromedico.id" from="${telemedicina.CentroMedico.list()}" optionKey="id" required="" value="${medicoInstance?.idcentromedicoCentromedico?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'idespecialidadEspecialidad', 'error')} required">
	<label for="idespecialidadEspecialidad">
		<g:message code="medico.idespecialidadEspecialidad.label" default="Idespecialidad Especialidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="idespecialidadEspecialidad" name="idespecialidadEspecialidad.id" from="${telemedicina.Especialidad.list()}" optionKey="id" required="" value="${medicoInstance?.idespecialidadEspecialidad?.id}" class="many-to-one"/>
</div>

