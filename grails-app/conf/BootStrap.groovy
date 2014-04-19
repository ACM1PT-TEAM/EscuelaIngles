import escuelaingles.Profesor
import escuelaingles.Curso
import escuelaingles.Alumno

class BootStrap {

    def init = { servletContext ->
        new Profesor
        (
            nombre:'Fernando',
            apellidoPaterno:'ACM1',
            apellidoMaterno:'PT',
            correoElectronico:'fernandoacm1@gmail.com',
            nivel:'III',
            dias:'lunes,martes,viernes',
            horarios:'7:00-9:00,9:00-11:00',
            usuario:'fernando28',
            password:'mascapo28'
        ).save()
        /*if(!prof1.save){
            prof1.errors.allErrors.each{error ->
                println 'un error ocurrio con el profesor1: ${error}'
            }
        }*/        
                
        println Profesor.findByUsuario('fernando28')
        
        new Profesor
        (
            nombre:'Edward',
            apellidoPaterno:'Cullen',
            apellidoMaterno:'Avendaño',
            correoElectronico:'cullens@gmail.com',
            nivel:'I',
            dias:'lunes,miercoles,viernes',
            horarios:'7:00-9:00',
            usuario:'elmascapo',
            password:'vampiro2000'
        ).save()      
                
        println Profesor.findByUsuario('elmascapo')
        
        new Curso
        (
            nombreCurso:'Ingles',
            dias:'lunes,martes,viernes',
            horario:'7:00-9:00',
            aceptado:'Aceptado',
            prof:Profesor.findByUsuario('fernando28')
        ).save()
        
        println Curso.findByProf(Profesor.findByUsuario('fernando28'));
        
        new Curso
        (
            nombreCurso:'Ingles',
            dias:'lunes,miercoles,viernes',
            horario:'7:00-9:00',
            aceptado:'Aceptado',
            prof:Profesor.findByUsuario('elmascapo')
        ).save()
        
        println Curso.findByProf(Profesor.findByUsuario('elmascapo'));
        
        new Alumno(
            nombre:'Moises',
            apellidoPaterno:'Mas',
            apellidoMaterno:'Caporonga',
            correoElectronico:'moypete@gmail.com',
            telefono:'69696969',
            usuario:'moises28',
            password:'mascapo28',
            aprobado:'CURSANDO',
            calificacion:'Sin calificacion'
        ).save()
        
        println Alumno.findByUsuario('moises28')
        
        new Alumno(
            nombre:'Benito',
            apellidoPaterno:'Camelo',
            apellidoMaterno:'Bueno',
            correoElectronico:'bcbueno@gmail.com',
            telefono:'56123456',
            usuario:'benitoC',
            password:'cameloBueno',
            aprobado:'CURSANDO',
            calificacion:'Sin calificacion'
        ).save()
        
        println Alumno.findByUsuario('benitoC')
    }

    def destroy = 
    {
        
    }
}
