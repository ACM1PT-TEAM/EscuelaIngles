package escuelaingles

class Profesor 
{
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String correoElectronico
    byte[] video
    String nivel
    byte[] constancia
    String password
    String usuario
    String dias
    String horarios         
    
    static hasMany = [cursos: Curso]

    static constraints = 
    {
        nombre blank:false, nullable:false
        apellidoPaterno blank:false, nullable:false 
        apellidoMaterno blank:false, nullable:false 
        correoElectronico blank:false, nullable:false,email:true,unique:true
        nivel inList:["I","II","III","IV","V","VI"], blank:false, nullable:false
        dias size:5..100,blank:false, nullable:false
        horarios size:5..100, blank:false, nullable:false
        usuario size: 5..15, blank:false, unique:true
        password size:8..12,blank:false,password:true
        video nullable:true, maxSize: 1000000//,url:true)
        constancia nullable:true, maxSize: 1000000//,url:true)
        cursos nullable:true
    }
    
    String toStringV1()
    {
         return "${nombre} ${apellidoPaterno} ${apellidoMaterno}"
    }
    
    String toString()
    {
         return "${nombre} ${apellidoPaterno}"
    }
   
}