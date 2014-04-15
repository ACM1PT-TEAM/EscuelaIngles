<%@ page import="escuelaingles.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nombreCurso', 'error')} required">
	<label for="nombreCurso">
		<g:message code="curso.nombreCurso.label" default="Nombre Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nombreCurso" from="${cursoInstance.constraints.nombreCurso.inList}" required="" value="${cursoInstance?.nombreCurso}" valueMessagePrefix="curso.nombreCurso"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'dias', 'error')} required">
	<label for="dias">
		<g:message code="curso.dias.label" default="Dias" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dias" maxlength="100" required="" value="${cursoInstance?.dias}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="curso.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="horario" from="${cursoInstance.constraints.horario.inList}" required="" value="${cursoInstance?.horario}" valueMessagePrefix="curso.horario"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'aceptado', 'error')} required">
	<label for="aceptado">
		<g:message code="curso.aceptado.label" default="Aceptado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="aceptado" from="${cursoInstance.constraints.aceptado.inList}" required="" value="${cursoInstance?.aceptado}" valueMessagePrefix="curso.aceptado"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'alumnos', 'error')} ">
	<label for="alumnos">
		<g:message code="curso.alumnos.label" default="Alumnos" />
		
	</label>
	<g:select name="alumnos" from="${escuelaingles.Alumno.list()}" multiple="multiple" optionKey="id" size="5" value="${cursoInstance?.alumnos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'prof', 'error')} required">
	<label for="prof">
		<g:message code="curso.prof.label" default="Prof" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="prof" name="prof.id" from="${escuelaingles.Profesor.list()}" optionKey="id" required="" value="${cursoInstance?.prof?.id}" class="many-to-one"/>
</div>

