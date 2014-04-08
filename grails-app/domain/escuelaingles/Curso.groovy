package escuelaingles

class Curso 
{
    String nombreCurso
    String aceptado
    String dias
    String horario
    
    static belongsTo = [profesor:Profesor]
    
    static hasMany = [alumnos:Alumno]
    
    static constraints = 
    {
        nombreCurso(inList:["Ingles"],nullable:false,blanck:false) 
        profesor(blanck:false,nullable:false)
        dias(size:5..100,blanck:false,nullable:false)
        horario(inList:["7:00-9:00","9:00-11:00","11:00-13:00","13:00-15:00","15:00-17:00","17:00-19:00","19:00-21:00"],nullable:false,blanck:false,multiple:false)
        aceptado(inList:["Aceptado","No Aceptado"],nullable:false,blanck:false)
    }
    
    String toString()
    {
        if(profesor != null)
            return "${id}   ${nombreCurso} ${profesor.nivel}"
    }
}
