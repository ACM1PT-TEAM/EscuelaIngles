<%@ page import="escuelaingles.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nombreCurso', 'error')} ">
	<label for="nombreCurso">
		<g:message code="curso.nombreCurso.label" default="Nombre Curso" />
		<span class="required-indicator">*</span>
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

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'dias', 'error')} ">
	<label for="dias">
		<g:message code="curso.dias.label" default="Dias" />
		<span class="required-indicator">*</span>
                <br/>
                <span style="font-size:smaller"style="font-style:italic">(Deje presionado 'ctrl' para seleccionar más de una opción)</span>
	</label>
	<select name="dias" multiple="true">
            <option value="lunes">lunes</option>
            <option value="martes">martes</option>
            <option value="miercoles">miercoles</option>
            <option value="jueves">jueves</option>
            <option value="viernes">viernes</option>
            <option value="sabado">sabado</option>
            <option value="domingo">domingo</option>
        </select>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'horario', 'error')} ">
	<label for="horario">
		<g:message code="curso.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="horario" from="${cursoInstance.constraints.horario.inList}" value="${cursoInstance?.horario}" valueMessagePrefix="curso.horario" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'aceptado', 'error')} ">
	<label for="aceptado">
		<g:message code="curso.aceptado.label" default="Aceptado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="aceptado" from="${cursoInstance.constraints.aceptado.inList}" value="${cursoInstance?.aceptado}" valueMessagePrefix="curso.aceptado" noSelection="['': '']"/>
</div>

<!--<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'alumnos', 'error')} ">
	<label for="alumnos">
		<g:message code="curso.alumnos.label" default="Alumnos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${cursoInstance?.alumnos?.id}" var="a">
    <li><g:link controller="alumno" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="alumno" action="create" params="['curso.id': cursoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'alumno.label', default: 'Alumno')])}</g:link>
</li>
</ul>

</div>-->

