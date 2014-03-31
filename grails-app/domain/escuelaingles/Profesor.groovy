package escuelaingles

class Profesor 
{
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String correoElectronico
    String video
    String constancia
    String password
    String usuario
    
    static constraints = 
    {
        nombre blank:false
        apellidoPaterno blank:false
        apellidoMaterno blank:false
        correoElectronico blank:false
        video blank:false
        constanci black:false
        password size:8..20, blank:false,unique:true
        usuario size: 5..15, blank:false, unique:true
    }
}
