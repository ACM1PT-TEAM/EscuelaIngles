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
	<g:field type="email" name="correoElectronico" required="" value="${profesorInstance?.correoElectronico}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nivel', 'error')} ">
	<label for="nivel">
		<g:message code="profesor.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nivel" from="${profesorInstance.constraints.nivel.inList}" value="${profesorInstance?.nivel}" valueMessagePrefix="profesor.nivel" noSelection="['': 'I']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'dias', 'error')} required">
	<label for="dias">
		<g:message code="profesor.dias.label" default="Dias" />
		<span class="required-indicator">*</span>
	</label>
	 <select name="dias" multiple="true">
            <option value="lunes">Lunes</option>
            <option value="martes">Martes</option>
            <option value="miercoles">Miercoles</option>
            <option value="jueves">Jueves</option>
            <option value="viernes">Viernes</option>
            <option value="sabado">Sabado</option>
            <option value="domingo">Domingo</option>
        </select>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'horarios', 'error')} ">
	<label for="horarios">
		<g:message code="profesor.horarios.label" default="Horarios" />
		<span class="required-indicator">*</span>
	</label>
        <select name="horarios" multiple="true">
            <option value="7:00-9:00">7:00-9:00</option>
            <option value="9:00-11:00">9:00-11:00</option>
            <option value="11:00-13:00">11:00-13:00</option>
            <option value="13:00-15:00">13:00-15:00</option>
            <option value="15:00-17:00">15:00-17:00</option>
            <option value="17:00-19:00">17:00-19:00</option>
            <option value="19:00-21:00">19:00-21:00f</option>
        </select>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="profesor.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${profesorInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="profesor.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" maxlength="15" required="" value="${profesorInstance?.usuario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'video', 'error')} required">
	<label for="video">
		<g:message code="profesor.video.label" default="Video" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="video" required="" value="${profesorInstance?.video}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'constancia', 'error')} ">
	<label for="constancia">
		<g:message code="profesor.constancia.label" default="Constancia" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="constancia" value="${profesorInstance?.constancia}"/>
</div>

