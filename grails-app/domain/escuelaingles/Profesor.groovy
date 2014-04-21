package escuelaingles

class Profesor 
{
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String correoElectronico
    byte[] video
    byte[] constancia
    String password
    String usuario
    String dias
    String horarios         
    
    static hasMany = [cursos: Curso, solicitudes:Solicitud]

    static constraints = 
    {
        nombre blank:false, nullable:false
        apellidoPaterno blank:false, nullable:false 
        apellidoMaterno blank:false, nullable:false 
        correoElectronico blank:false, nullable:false,email:true,unique:true
        dias size:5..100,blank:false, nullable:false
        horarios size:5..100, blank:false, nullable:false
        usuario size: 5..15, blank:false, unique:true
        password size:8..12,blank:false,password:true
        video nullable:true, maxSize: 104857600//,url:true)
        constancia nullable:true, maxSize: 1000000//,url:true)
        cursos nullable:true
        solicitudes nullable:true
    }
    
    String toStringV1()
    {
         return "${nombre} ${apellidoPaterno} ${apellidoMaterno} ${horarios} ${dias}"
    }
    
    String toString()
    {
         return "${nombre} ${apellidoPaterno} ${apellidoMaterno}"
    }
   
}