<%@ page import="escuelaingles.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${alumnoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="alumno.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${alumnoInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="alumno.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" required="" value="${alumnoInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'correoElectronico', 'error')} required">
	<label for="correoElectronico">
		<g:message code="alumno.correoElectronico.label" default="Correo Electronico" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correoElectronico" required="" value="example@dominio.com"  style="font-style:italic" style="font-size:smaller"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="alumno.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="telefono"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'aprobado', 'error')} ">
	<label for="aprobado">
		<g:message code="alumno.aprobado.label" default="Aprobado" />
		
	</label>
	<g:select name="aprobado" from="${alumnoInstance.constraints.aprobado.inList}" value="${alumnoInstance?.aprobado}" valueMessagePrefix="alumno.aprobado" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="alumno.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${alumnoInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="alumno.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" required="" value="${alumnoInstance?.usuario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'curso', 'error')} required">
	<label for="curso">
		<g:message code="alumno.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curso" name="curso.id" from="${escuelaingles.Curso.list()}" optionKey="id" required="" value="${alumnoInstance?.curso?.id}" class="many-to-one"/>
</div>

