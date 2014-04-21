<%@ page import="escuelaingles.Solicitud" %>



<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'alum', 'error')} ">
	<label for="alum">
		<g:message code="solicitud.alum.label" default="Alum" />
		
	</label>
	<g:select id="alum" name="alum.id" from="${escuelaingles.Alumno.list()}" optionKey="id" value="${solicitudInstance?.alum?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'prof', 'error')} ">
	<label for="prof">
		<g:message code="solicitud.prof.label" default="Prof" />
		
	</label>
	<g:select id="prof" name="prof.id" from="${escuelaingles.Profesor.list()}" optionKey="id" value="${solicitudInstance?.prof?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="solicitud.estado.label" default="Estado" />
		
	</label>
	<g:select name="estado" from="${solicitudInstance.constraints.estado.inList}" value="${solicitudInstance?.estado}" valueMessagePrefix="solicitud.estado" noSelection="['': '']"/>
</div>

