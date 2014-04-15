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
                
        new Curso
        (
            nombreCurso:'Ingles',
            aceptado:'Aceptado',
            dias:'lunes,martes,viernes',
            horario:'7:00-9:00',
            profesor:Profesor.findByNombre('Fernando')
        ).save()
        
        new Alumno(
            nombre:'Moises',
            apellidoPaterno:'Mas',
            apellidoMaterno:'Caporonga',
            correoElectronico:'moypete@gmail.com',
            telefono:'69696969',
            usuario:'moises28',
            password:'mascapo28',
            aprobado:'APROBADO',
            calificacion:'8'
        ).save()
    }

    def destroy = 
    {
        
    }
}
