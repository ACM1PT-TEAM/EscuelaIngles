<%@ page import="escuelaingles.Alumno" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
        <title>Cuenta de Alumno</title>
    </head>
    <body>
        <a href="#page-body" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		</ul>
	</div>
        <div id="status" role="complementary">
		<h1>Menu de opciones</h1>
                <g:link class="edit" action="edit" resource="${alumnoInstance}">
                    <g:message code=" " default="Modificar cuenta" />
                </g:link>
                </br>
                <g:link class="show" action="show" resource="${alumnoInstance}">
                    <g:message code="default.button.show.label" default="Ver Cuenta" />
                </g:link>
	</div>
        <div id="page-body" role="main">
            <h1>TU CUENTA DE ALUMNO</h1>
            </br>
            <p>Estas en tu cuenta de alumno, aqui podras ver la informacion de 
            tu cuenta, modifcar tu cuenta, ver los cursos en los que estas inscrito
            y ver las calificaciones de los mismos.</p>
            </br>
            <h1>Curso</h1>

        </div>
        
    </body>
</html>