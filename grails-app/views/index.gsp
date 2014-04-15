<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main"/>
    <title>Escuela de Ingles</title>
  </head>
  <body>
    <div id="welcome">
      <br />
      <h3>Bienvenidos a la Escuela de Ingles ACM1</h3>
      <p>La escuela de Ingles ACM1 ofrece una amplia variedad de cursos de ingles
      para todas las edades y en una gran variedad de horarios, asimismo contamos
      con profesor certificados para impartir los cursos.</p>
    </div>
    <div class="homeCell">
      <h3>Consulta Cursos</h3>
      <p> Comprueba si hay un curso que se acomode a tu horario y necesidades.</p>
      <span class="buttons" >
        <g:link controller="curso" action="index">Consultar Cursos</g:link>
      </span>
    </div>
    <div class="homeCell">
      <h3>Postularse como Profesor</h3>
      <p>Si estas interesado en impartir clases y ademas cuentas con la experiencia
    necesaria no dudes en postularte como profesor.</p>
      <span class="buttons" >
        <g:link controller="profesor" action="create"> Postularse como Profesor</g:link>
      </span>
    </div>
    <div class="homeCell">
      <h3>Registrarte</h3> 
      <p>Si estas interesado en involucrarte mas en los cursos tenemos la opcion
        de que te puedas registrar y posteriormente inscribirte a un curso.</p>
      <span class="buttons" >
        <g:link controller="alumno" action="create">Registrarse</g:link>
      </span>
    </div>
  </body>
</html>