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
        <title>Login</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
        </g:if>
        <g:form action="validate">
            <table>
                <tr class="prop">
                    <td class="name">
                        <label for="usuario">Usuario:</label>
                    </td>
                    <td class="value">
                        <input type="text" id="usuario" name="usuario" value=" ">
                    </td>
                </tr>
                <tr class="prop">
                    <td class="name">
                        <label for="password">Password:</label>
                    </td>
                    <td class="value">
                        <input type="password" id="password" name="password" value="">
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <input type="submit" value="Iniciar Sesion"/>
                    </td>
                </tr>
            </table>
        </g:form>
    </body>
</html>
