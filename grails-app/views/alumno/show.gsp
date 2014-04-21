
<%@ page import="escuelaingles.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-alumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}">Inicio</a></li>
			</ul>
		</div>
		<div id="show-alumno" class="content scaffold-show" role="main">
			<h1>${alumnoInstance}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list alumno">
			
				<g:if test="${alumnoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="alumno.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${alumnoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.apellidoPaterno}">
				<li class="fieldcontain">
					<span id="apellidoPaterno-label" class="property-label"><g:message code="alumno.apellidoPaterno.label" default="Apellido Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${alumnoInstance}" field="apellidoPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.apellidoMaterno}">
				<li class="fieldcontain">
					<span id="apellidoMaterno-label" class="property-label"><g:message code="alumno.apellidoMaterno.label" default="Apellido Materno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${alumnoInstance}" field="apellidoMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.correoElectronico}">
				<li class="fieldcontain">
					<span id="correoElectronico-label" class="property-label"><g:message code="alumno.correoElectronico.label" default="Correo Electronico" /></span>
					
						<span class="property-value" aria-labelledby="correoElectronico-label"><g:fieldValue bean="${alumnoInstance}" field="correoElectronico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="alumno.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${alumnoInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="alumno.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:fieldValue bean="${alumnoInstance}" field="usuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="alumno.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${alumnoInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.aprobado}">
				<li class="fieldcontain">
					<span id="aprobado-label" class="property-label"><g:message code="alumno.aprobado.label" default="Aprobado" /></span>
					
						<span class="property-value" aria-labelledby="aprobado-label"><g:fieldValue bean="${alumnoInstance}" field="aprobado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.calificacion}">
				<li class="fieldcontain">
					<span id="calificacion-label" class="property-label"><g:message code="alumno.calificacion.label" default="Calificacion" /></span>
					
						<span class="property-value" aria-labelledby="calificacion-label"><g:fieldValue bean="${alumnoInstance}" field="calificacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.curso}">
				<li class="fieldcontain">
					<span id="curso-label" class="property-label"><g:message code="alumno.curso.label" default="Curso" /></span>
					
						<span class="property-value" aria-labelledby="curso-label"><g:link controller="curso" action="show" id="${alumnoInstance?.curso?.id}">${alumnoInstance?.curso?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
		</div>
	</body>
</html>
