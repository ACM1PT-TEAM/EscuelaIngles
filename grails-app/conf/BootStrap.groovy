import escuelaingles.Profesor
import escuelaingles.Curso
import escuelaingles.Alumno

class BootStrap {

    def init = { servletContext ->
        def prof1 = new Profesor
        (
            nombre:'Fernando',
            apellidoPaterno:'ACM1',
            apellidoMaterno:'PT',
            correoElectronico:'fernandoacm1@gmail.com',
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
        
        def prof2 = new Profesor
        (
            nombre:'Edward',
            apellidoPaterno:'Cullen',
            apellidoMaterno:'Avendaño',
            correoElectronico:'cullens@gmail.com',            
            dias:'lunes,miercoles,viernes',
            horarios:'7:00-9:00',
            usuario:'elmascapo',
            password:'vampiro2000'
        ).save()      
        /*if(!prof2.save){
            prof2.errors.allErrors.each{error ->
                println 'un error ocurrio con el profesor2: ${error}'
            }
        } */
        
        println Profesor.findByUsuario('elmascapo')
        
        def curso1 = new Curso
        (
            nivelCurso:'Basico 2',
            dias:'Lunes, Martes, Viernes',
            horario:'7:00-9:00',
            aceptado:'Aceptado',
            profesor:prof1
        ).save()
        
        /*if(!curso1.save){
            curso1.errors.allErrors.each{error ->
                println 'un error ocurrio con el curso1: ${error}'
            }
        }*/
        
        println Curso.findByProfesor(Profesor.findByUsuario('fernando28'));
        
        def curso2 = new Curso
        (
            nivelCurso:'Intermedio 1',
            dias:'Lunes, Miercoles, Viernes',
            horario:'7:00-9:00',
            aceptado:'Aceptado',
            profesor:prof2//Profesor.findByUsuario('elmascapo')
        ).save()
        /*if(!curso2.save){
            curso2.errors.allErrors.each{error ->
                println 'un error ocurrio con el curso2: ${error}'
            }
        }*/
        println Curso.findByProfesor(Profesor.findByUsuario('elmascapo'));
        
        def alumno1 = new Alumno(
            nombre:'Moises',
            apellidoPaterno:'Mas',
            apellidoMaterno:'Caporonga',
            correoElectronico:'moypete@gmail.com',
            telefono:'69696969',
            usuario:'moises28',
            password:'mascapo28',
            aprobado:'CURSANDO',
            calificacion:'Sin calificacion',
            curso:curso1
        ).save()
        
        /*if(!alumno1.save){
            alumno1.errors.allErrors.each{error ->
                println 'un error ocurrio con el alumno1: ${error}'
            }
        }*/
        
        println Alumno.findByUsuario('moises28')
        
        def alumno2 = new Alumno(
            nombre:'Benito',
            apellidoPaterno:'Camelo',
            apellidoMaterno:'Bueno',
            correoElectronico:'bcbueno@gmail.com',
            telefono:'56123456',
            usuario:'benitoC',
            password:'cameloBueno',
            aprobado:'CURSANDO',
            calificacion:'Sin calificacion',
            curso:curso2
        ).save()
        
        /*if(!alumno2.save){
            alumno2.errors.allErrors.each{error ->
                println 'un error ocurrio con el alumno2: ${error}'
            }
        }*/
        
        println Alumno.findByUsuario('benitoC')
    }

    def destroy = 
    {
        
    }
}
