<%@ page import="escuelaingles.Profesor" %>



<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="profesor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${profesorInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="profesor.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${profesorInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="profesor.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" required="" value="${profesorInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'correoElectronico', 'error')} required">
	<label for="correoElectronico">
		<g:message code="profesor.correoElectronico.label" default="Correo Electronico" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correoElectronico" required="" value="example@dominio.com"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'dias', 'error')} required">
	<label for="dias">
		<g:message code="profesor.dias.label" default="Dias" />
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

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'horarios', 'error')} required">
	<label for="horarios">
		<g:message code="profesor.horarios.label" default="Horarios" />
		<span class="required-indicator">*</span>
                <br/>
                <span style="font-size:smaller" style="font-style:italic">(Deje presionado 'ctrl' para seleccionar más de una opción)</span>
	</label>
	<select name="horarios" multiple="true">
            <option value="7:00-9:00">7:00-9:00</option>
            <option value="9:00-11:00">9:00-11:00</option>
            <option value="11:00-13:00">11:00-13:00</option>
            <option value="13:00-15:00">13:00-15:00</option>
            <option value="15:00-17:00">15:00-17:00</option>
            <option value="17:00-19:00">17:00-19:00</option>
            <option value="19:00-21:00">19:00-21:00</option>
        </select>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="profesor.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
                <br/>
                <span style="font-size:smaller" style="font-style:italic">Min. 5 caractéres Max. 15 caractéres</span>
	</label>
	<g:textField name="usuario" maxlength="15" required="" value="${profesorInstance?.usuario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="profesor.password.label" default="Password" />
		<span class="required-indicator">*</span>
                <br/>
                <span style="font-size:smaller" style="font-style:italic">Min. 8 caractéres Max. 12 caractéres</span>
	</label>
	<g:field type="password" name="password" maxlength="12" required="" value="${profesorInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'video', 'error')} ">
	<label for="video">
		<g:message code="profesor.video.label" default="Video" />
		
	</label>
	<input type="file" id="video" name="video" />
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'constancia', 'error')} ">
	<label for="constancia">
		<g:message code="profesor.constancia.label" default="Constancia" />
		
	</label>
	<input type="file" id="constancia" name="constancia" />
</div>

<!--<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'cursos', 'error')} ">
	<label for="cursos">
		<g:message code="profesor.cursos.label" default="Cursos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${profesorInstance?.cursos?}" var="c">
    <li><g:link controller="curso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="curso" action="create" params="['profesor.id': profesorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'curso.label', default: 'Curso')])}</g:link>
</li>
</ul>

</div>-->

