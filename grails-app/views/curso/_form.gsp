<%@ page import="escuelaingles.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nivelCurso', 'error')} required">
	<label for="nivelCurso">
		<g:message code="curso.nivelCurso.label" default="Nivel Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nivelCurso" from="${cursoInstance.constraints.nivelCurso.inList}" required="" value="${cursoInstance?.nivelCurso}" valueMessagePrefix="curso.nivelCurso"/>
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
	
<ul class="one-to-many">
<g:each in="${cursoInstance?.alumnos?}" var="a">
    <li><g:link controller="alumno" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="alumno" action="create" params="['curso.id': cursoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'alumno.label', default: 'Alumno')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'profesor', 'error')} ">
	<label for="profesor">
		<g:message code="curso.profesor.label" default="Profesor" />
		
	</label>
	<g:select id="profesor" name="profesor.id" from="${escuelaingles.Profesor.list()}" optionKey="id" value="${cursoInstance?.profesor?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

