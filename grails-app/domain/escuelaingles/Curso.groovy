package escuelaingles

class Curso 
{
    String nivelCurso
    String aceptado
    String dias
    String horario
    
    static belongsTo = [profesor:Profesor]
    
    static hasMany = [alumnos:Alumno]
    
    static constraints = 
    {
        nivelCurso inList:["Basico 1","Basico 2","Basico 3","Intermedio 1","Intermedio 2","Intermedio 3","Avanzado 1","Avanzado 2","Avanzado 3"], blank:false, nullable:false
        dias size:5..100,blank:false,nullable:false
        horario inList:["7:00-9:00","9:00-11:00","11:00-13:00","13:00-15:00","15:00-17:00","17:00-19:00","19:00-21:00"],nullable:false,blank:false,multiple:false
        aceptado inList:["Aceptado","No Aceptado"],nullable:false,blank:false   
        alumnos nullable: true
        profesor nullable: true
    }
    
    String toString()
    {
            return "${nivelCurso} ${horario}"
    }
}
