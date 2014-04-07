package escuelaingles

class Curso 
{
    String nombreCurso
    String nivel
    String Horario
    String Dia
    Boolean aceptado
    
    static belongsTo = [Profesor:Profesor]
    
    static constraints = 
    {
        nombreCurso(default:"Ingles")
        nivel(blank:false, nullable:false)
        Profesor()
        Horario()
        Dia()
        aceptado(default:false)
    }
    
    String toString()
    {
        return "${nombreCurso}, ${nivel}"
    }
}
