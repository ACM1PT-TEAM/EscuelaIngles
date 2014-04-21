<%@ page import="escuelaingles.Profesor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-profesor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-profesor" class="content scaffold-show" role="main">
			<h1>${profesorInstance}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list profesor">
			
				<g:if test="${profesorInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="profesor.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${profesorInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profesorInstance?.apellidoPaterno}">
				<li class="fieldcontain">
					<span id="apellidoPaterno-label" class="property-label"><g:message code="profesor.apellidoPaterno.label" default="Apellido Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${profesorInstance}" field="apellidoPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profesorInstance?.apellidoMaterno}">
				<li class="fieldcontain">
					<span id="apellidoMaterno-label" class="property-label"><g:message code="profesor.apellidoMaterno.label" default="Apellido Materno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${profesorInstance}" field="apellidoMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profesorInstance?.correoElectronico}">
				<li class="fieldcontain">
					<span id="correoElectronico-label" class="property-label"><g:message code="profesor.correoElectronico.label" default="Correo Electronico" /></span>
					
						<span class="property-value" aria-labelledby="correoElectronico-label"><g:fieldValue bean="${profesorInstance}" field="correoElectronico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profesorInstance?.nivel}">
				<li class="fieldcontain">
					<span id="nivel-label" class="property-label"><g:message code="profesor.nivel.label" default="Nivel" /></span>
					
						<span class="property-value" aria-labelledby="nivel-label"><g:fieldValue bean="${profesorInstance}" field="nivel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profesorInstance?.dias}">
				<li class="fieldcontain">
					<span id="dias-label" class="property-label"><g:message code="profesor.dias.label" default="Dias" /></span>
					
						<span class="property-value" aria-labelledby="dias-label"><g:fieldValue bean="${profesorInstance}" field="dias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profesorInstance?.horarios}">
				<li class="fieldcontain">
					<span id="horarios-label" class="property-label"><g:message code="profesor.horarios.label" default="Horarios" /></span>
					
						<span class="property-value" aria-labelledby="horarios-label"><g:fieldValue bean="${profesorInstance}" field="horarios"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profesorInstance?.video}">
				<li class="fieldcontain">
					<span id="video-label" class="property-label"><g:message code="profesor.video.label" default="Video" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profesorInstance?.constancia}">
				<li class="fieldcontain">
					<span id="constancia-label" class="property-label"><g:message code="profesor.constancia.label" default="Constancia" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profesorInstance?.cursos}">
				<li class="fieldcontain">
					<span id="cursos-label" class="property-label"><g:message code="profesor.cursos.label" default="Cursos" /></span>
					
						<g:each in="${profesorInstance.cursos}" var="c">
						<span class="property-value" aria-labelledby="cursos-label"><g:link controller="curso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:profesorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${profesorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
