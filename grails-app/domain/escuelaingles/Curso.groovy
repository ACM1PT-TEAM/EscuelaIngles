package escuelaingles

class Curso 
{
    String nombreCurso
    String aceptado
   
    static belongsTo = [profesor:Profesor]
    
    static hasMany = [alumnos:Alumno]
    
    static constraints = 
    {
        nombreCurso(inList:["Ingles"]) 
        profesor(blanck:false,nullable:false)
        aceptado(inList:["Aceptado","No Aceptado"],nullable:false,blanck:false)
    }
    
    String toString()
    {
        return "${id} ${nombreCurso} "
    }
}
