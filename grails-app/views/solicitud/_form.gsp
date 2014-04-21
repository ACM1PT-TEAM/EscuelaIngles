<%@ page import="escuelaingles.Solicitud" %>



<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'alumno', 'error')} ">
	<label for="alumno">
		<g:message code="solicitud.alumno.label" default="Alumno" />
		
	</label>
	<g:select id="alumno" name="alumno.id" from="${escuelaingles.Alumno.list()}" optionKey="id" value="${solicitudInstance?.alumno?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'profesor', 'error')} ">
	<label for="profesor">
		<g:message code="solicitud.profesor.label" default="Profesor" />
		
	</label>
	<g:select id="profesor" name="profesor.id" from="${escuelaingles.Profesor.list()}" optionKey="id" value="${solicitudInstance?.profesor?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="solicitud.estado.label" default="Estado" />
		
	</label>
	<g:select name="estado" from="${solicitudInstance.constraints.estado.inList}" value="${solicitudInstance?.estado}" valueMessagePrefix="solicitud.estado" noSelection="['': '']"/>
</div>

