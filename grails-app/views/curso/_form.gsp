<%@ page import="escuelaingles.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nombreCurso', 'error')} required">
	<label for="nombreCurso">
		<g:message code="curso.nombreCurso.label" default="Nombre Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreCurso" required="" value="${cursoInstance?.nombreCurso}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="curso.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nivel" required="" value="${cursoInstance?.nivel}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'seleccion', 'error')} required">
	<label for="seleccion">
		<g:message code="curso.seleccion.label" default="Seleccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="seleccion" type="number" value="${cursoInstance.seleccion}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'dia', 'error')} required">
	<label for="dia">
		<g:message code="curso.dia.label" default="Dia" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dia" precision="day"  value="${cursoInstance?.dia}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="curso.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="horario" precision="day"  value="${cursoInstance?.horario}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'profesor', 'error')} required">
	<label for="profesor">
		<g:message code="curso.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profesor" name="profesor.id" from="${escuelaingles.Profesor.list()}" optionKey="id" required="" value="${cursoInstance?.profesor?.id}" class="many-to-one"/>
</div>

