package escuelaingles

class EscuelaInglesTagsTagLib {
    //static defaultEncodeAs = 'html'
    //static encodeAsForTags = [tagName: 'raw']
    
    def loginToggle = {
        out << "<div style='margin: 15px 0 40px;'>"
        if (request.getSession(false) && (session.alumno||session.profesor)){
            out << "<span style='float:left; margin-left: 15px'>"
            if(session.alumno){
            out << "Bienvenido ${session.alumno}."}
            if(session.profesor){
            out << "Bienvenido ${session.profesor}."}
            out << "</span><span style='float:right;margin-right:15px'>"
            out << "<a href='${createLink(controller:'Alumno', action:'logout')}'>"
            out << "Salir </a></span>"
        } else{
            out << "<span class='buttons' style='float:right;margin-right:10px'>"
            out << "<a href='${createLink(controller:'Alumno', action:'create')}'>"
            out << "Registrarse</a></span>"
            out << "<span class='buttons' style='float:right;margin-right:10px'>"
            out << "<a href='${createLink(controller:'Alumno', action:'login')}'>"
            out << "Login Alumno</a></span>"
            out << "<span class='buttons' style='float:right;margin-right:10px'>"
            out << "<a href='${createLink(controller:'Profesor', action:'login')}'>"
            out << "Login Profesor</a></span>"
        }
        out << "</div><br/>"
    }
}
