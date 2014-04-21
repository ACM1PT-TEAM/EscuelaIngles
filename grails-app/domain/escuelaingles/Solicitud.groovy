package escuelaingles

class Solicitud {

    Alumno alumno;
    Profesor profesor;
    String estado;
    
    static belongsTo = [profesor:Profesor]
    
    static constraints = {
        alumno nullable : true
        profesor nullable : true
        estado nullable : true, inList:["Aprobada","Rechazada"]
    }
}
