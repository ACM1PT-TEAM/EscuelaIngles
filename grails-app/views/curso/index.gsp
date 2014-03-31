
<%@ page import="escuelaingles.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-curso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreCurso" title="${message(code: 'curso.nombreCurso.label', default: 'Nombre Curso')}" />
					
						<g:sortableColumn property="nivel" title="${message(code: 'curso.nivel.label', default: 'Nivel')}" />
					
						<g:sortableColumn property="seleccion" title="${message(code: 'curso.seleccion.label', default: 'Seleccion')}" />
					
						<g:sortableColumn property="dia" title="${message(code: 'curso.dia.label', default: 'Dia')}" />
					
						<g:sortableColumn property="horario" title="${message(code: 'curso.horario.label', default: 'Horario')}" />
					
						<th><g:message code="curso.profesor.label" default="Profesor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cursoInstanceList}" status="i" var="cursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cursoInstance.id}">${fieldValue(bean: cursoInstance, field: "nombreCurso")}</g:link></td>
					
						<td>${fieldValue(bean: cursoInstance, field: "nivel")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "seleccion")}</td>
					
						<td><g:formatDate date="${cursoInstance.dia}" /></td>
					
						<td><g:formatDate date="${cursoInstance.horario}" /></td>
					
						<td>${fieldValue(bean: cursoInstance, field: "profesor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cursoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
