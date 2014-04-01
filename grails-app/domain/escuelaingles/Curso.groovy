package escuelaingles

class Curso 
{
    String nombreCurso
    String nivel
    Profesor Profesor
    Date Horario
    Date Dia
    int seleccion
    
    static constraints = 
    {
        nombreCurso blank:false
        nivel blank:false, nullable:false
        seleccion blank:false, nullable: false
    }
}
