package escuelaingles

class Escuela {
    String password
    String usuario    

    static constraints = 
    {
        usuario size: 5..15, blank:false, unique:true
        password size:8..12,blank:false,password:true
    }
    
    String toString()
    {
         return "Administrador"
    }
}
