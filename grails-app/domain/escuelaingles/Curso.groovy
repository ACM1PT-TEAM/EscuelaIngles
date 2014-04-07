package escuelaingles

class Curso 
{
    String nombreCurso
    String aceptado
   
    static belongsTo = [profesor:Profesor]
    
    static constraints = 
    {
        nombreCurso() 
        profesor()
        aceptado(inLst:["Aceptado","No Aceptado"])
    }
    
    String toString()
    {
        return "${nombreCurso}"
    }
}
