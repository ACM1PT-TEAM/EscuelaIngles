package escuelaingles

class Profesor 
{
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String correoElectronico
    String video
    String nivel
    String constancia
    String password
    String usuario
    String dias
    String horarios         
    
    static hasMany = [cursos: Curso]

    static constraints = 
    {
        nombre(blank:false, nullable:false)
        apellidoPaterno(blank:false, nullable:false)
        apellidoMaterno(blank:false, nullable:false)
        correoElectronico(blank:false, nullable:false,email:true,unique:true)
        nivel(inList:["I","II","III","IV","V","VI"], blanck:false, nullable:false)
        dias(size:5..100,blank:false, nullable:false)
        horarios(size:5..100, blanck:false, nullable:false)
        password (size:8..12,blank:false,password:true)
        usuario(size: 5..15, blank:false, unique:true)
        video (blank:false,nullable:false)//,url:true)
        constancia (black:false,nullable:false)//,url:true)
    }
    
    String toStringV1()
    {
         return "${nombre} ${apellidoPaterno} ${apellidoMaterno}"
    }
}