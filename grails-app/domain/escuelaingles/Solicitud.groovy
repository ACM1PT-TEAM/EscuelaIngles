package escuelaingles

class Solicitud {

    Alumno alum;
    Profesor prof;
    String estado;
    
    static constraints = {
        alum nullable : true
        prof nullable : true
        estado nullable : true, inList:["Aprobada","Rechazada"]
    }
}
