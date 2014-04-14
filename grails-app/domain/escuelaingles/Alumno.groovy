package escuelaingles

class Alumno 
{
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String correoElectronico
    String calificacion 
    String telefono
    String aprobado// = "CURSANDO"
    String password
    String usuario
    
     static belongsTo = [curso:Curso]
    
    static constraints = 
    {
        nombre(blank:false, nullable:false)
        apellidoPaterno(blank:false, nullable:false)
        apellidoMaterno(blank:false, nullable:false)
        correoElectronico(blank:false, nullable:false, email:true,unique:true)
        telefono(blank:false, nullable:false)
        password(size:8..12,blank:false, nullable:false,password:true)
        aprobado(inList:["APROBADO","NO APROBADO","CURSANDO"], nullable:true,blanck:true)
        calificacion(inList:["5","6","7","8","9","10","NP","Sin calificacion"],nullable:true,blanck:true)
        usuario(size:5..15,blank:false, nullable:false,unique:true)
    }
    
    String toString()
    {
        return "${nombre} ${apellidoPaterno} ${apellidoMaterno}"
    }
}
