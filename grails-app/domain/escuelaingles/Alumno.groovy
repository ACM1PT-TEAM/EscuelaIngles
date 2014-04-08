package escuelaingles

class Alumno 
{
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String correoElectronico
    String telefono
    String aprobado
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
        aprobado(inList:["APROBADO","NO APROBADO","CURSANDO"])
        password(blank:false, nullable:false,password:true)
        usuario(blank:false, nullable:false,unique:true)
    }
}
