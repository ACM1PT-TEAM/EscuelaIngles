<%@ page import="escuelaingles.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nombreCurso', 'error')} ">
	<label for="nombreCurso">
		<g:message code="curso.nombreCurso.label" default="Nombre Curso" />
		
	</label>
	<g:select name="nombreCurso" from="${cursoInstance.constraints.nombreCurso.inList}" value="${cursoInstance?.nombreCurso}" valueMessagePrefix="curso.nombreCurso" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'profesor', 'error')} required">
	<label for="profesor">
		<g:message code="curso.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profesor" name="profesor.id" from="${escuelaingles.Profesor.list()}" optionKey="id" required="" value="${cursoInstance?.profesor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'aceptado', 'error')} ">
	<label for="aceptado">
		<g:message code="curso.aceptado.label" default="Aceptado" />
		
	</label>
	<g:select name="aceptado" from="${cursoInstance.constraints.aceptado.inList}" value="${cursoInstance?.aceptado}" valueMessagePrefix="curso.aceptado" noSelection="['': '']"/>
</div>

