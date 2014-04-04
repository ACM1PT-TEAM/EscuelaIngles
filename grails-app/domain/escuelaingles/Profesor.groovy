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
    String[] dias
    String[] horarios
    
    static constraints = 
    {
        nombre(blank:false, nullable:false)
        apellidoPaterno(blank:false, nullable:false)
        apellidoMaterno(blank:false, nullable:false)
        correoElectronico(blank:false, nullable:false,email:true,unique:true)
        nivel(inList:["I","II","III","IV","V","VI"], blanck:false, nullable:false)
        dias(inList:["Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo"],multiple:true)
        horarios(inList:["7:00-9:00","9:00-11:00","11:00-13:00","13:00-15:00","15:00-17:00","17:00-19:00","19:00-21:00"],multiple:true)
        password (blank:false,password:true)
        usuario(size: 5..15, blank:false, unique:true)
        video (blank:false)
        constancia (black:false)
    }
}
