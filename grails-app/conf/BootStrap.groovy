import escuelaingles.Profesor
import escuelaingles.Curso
import escuelaingles.Alumno

class BootStrap {

    def init = 
    { 
        servletContext ->
        def prof1 = new Profesor
            (
                nombre:"Alfonso",
                apellidoPaterno:"Garcia",
                apellidoMaterno:"Juarez",
                correoElectronico:"alfonsoGJ@gmail.com",
                video:"URL:/Docs/video.mp4",
                nivel:"III",
                constancia:"URL:/Docs/constancia.mp4",
                password:"perroFeo",
                usuario:"elMasCapo",
                dias:"lunes,martes,viernes",
                horarios:"7:00-9:00,9:00-11:00"
            )
            prof1.save()
            if(prof1.hasErrors())
                println prof1.errors
                
       def prof2 = new Profesor
            (
                nombre:"Alberto",
                apellidoPaterno:"Caras",
                apellidoMaterno:"Reyes",
                correoElectronico:"albertoCR@gmail.com",
                video:"URL:/Docs/video.mp4",
                nivel:"IV",
                constancia:"URL:/Docs/constancia.mp4",
                password:"albertoR",
                usuario:"leonidas",
                dias:"lunes,martes",
                horarios:"11:00-13:00,15:00-17:00"
            )
            prof2.save()
            if(prof2.hasErrors())
                println prof2.errors
                
        def curso1 = new Curso
            (
                 nombreCurso:"Ingles",
                 aceptado:"No Aceptado",
                 profesor:prof1
            )
            curso1.save()
            if(curso1.hasErrors())
                println curso1.errors
    }
    def destroy = 
    {
        
    }
}
