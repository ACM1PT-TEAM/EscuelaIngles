<%@ page import="escuelaingles.Escuela" %>



<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="escuela.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" maxlength="15" required="" value="${escuelaInstance?.usuario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="escuela.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="12" required="" value="${escuelaInstance?.password}"/>
</div>

