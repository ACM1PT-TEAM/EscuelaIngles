package escuelaingles

class Curso 
{
    String nombreCurso
    String aceptado
    String dias
    String horario
    Profesor prof
    
    static hasMany = [alumnos:Alumno]
    
    static constraints = 
    {
        nombreCurso inList:["Ingles"],nullable:false,blank:false        
        dias size:5..100,blank:false,nullable:false
        horario inList:["7:00-9:00","9:00-11:00","11:00-13:00","13:00-15:00","15:00-17:00","17:00-19:00","19:00-21:00"],nullable:false,blank:false,multiple:false
        aceptado inList:["Aceptado","No Aceptado"],nullable:false,blank:false
        prof nullable:false
        alumnos nullable: true
    }
    
    String toString()
    {
            return "${nombreCurso} ${prof}"
    }
}
