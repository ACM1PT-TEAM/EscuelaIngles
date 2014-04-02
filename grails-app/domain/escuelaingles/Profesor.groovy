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
    //def nivel = [1,2,3,4]
    //def dias = ["Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo"]
    //int[] horarios = [1,2,3,4,5,6,7]
    
    static constraints = 
    {
        nombre(blank:false, nullable:false)
        apellidoPaterno(blank:false, nullable:false)
        apellidoMaterno(blank:false, nullable:false)
        correoElectronico(blank:false, nullable:false)
        nivel(inList:["I","II","III","IV","V","VI"])
        password (blank:false,password:true)
        usuario(size: 5..15, blank:false, unique:true)
        video (blank:false)
        constancia (black:false)
    }
}
