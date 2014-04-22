<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'escuela.label', default: 'Administrador')}" />
        <title>Cuenta Administrador</title>
    </head>
    <body>
        <a href="#page-body" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                        <li><g:link class="profesor" controller="profesor" action="index">Profesores</g:link></li>
                        <li><g:link class="curso" controller="curso" action="index">Cursos</g:link></li>
                        <li><g:link class="alumno" controller="alumno" action="index">Alumnos</g:link></li>
		</ul>
	</div>
        <div id="status" role="complementary">
		<h1>Menu de opciones</h1>
                <li><g:link controller="solicitud" action="index">Ver Solicitudes</g:link></li>
                <li><g:link controller="alumno" action="index">Ver Calificaciones</g:link></li>
	</div>
        <div id="page-body" role="main">
            <h1>CUENTA ADMINISTRADOR</h1>
            </br>
            <p>Desde tu cuenta de administrador, tu podras ver los alumnos inscritos,
            las solicitudes de los profesores que quieren impartir cursos en tu sitio,
            crear cursos y todas las labores correspondientes a la administracion de
            tu sitio web.</p>
            </br>
          

        </div>
    </body>
</html>
