import escuelaingles.Profesor
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_escuelaIngles_profesor_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/profesor/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: profesorInstance, field: 'nombre', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("profesor.nombre.label"),'default':("Nombre")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("nombre"),'required':(""),'value':(profesorInstance?.nombre)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profesorInstance, field: 'apellidoPaterno', 'error'))
printHtmlPart(4)
invokeTag('message','g',15,['code':("profesor.apellidoPaterno.label"),'default':("Apellido Paterno")],-1)
printHtmlPart(2)
invokeTag('textField','g',18,['name':("apellidoPaterno"),'required':(""),'value':(profesorInstance?.apellidoPaterno)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profesorInstance, field: 'apellidoMaterno', 'error'))
printHtmlPart(5)
invokeTag('message','g',23,['code':("profesor.apellidoMaterno.label"),'default':("Apellido Materno")],-1)
printHtmlPart(2)
invokeTag('textField','g',26,['name':("apellidoMaterno"),'required':(""),'value':(profesorInstance?.apellidoMaterno)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profesorInstance, field: 'correoElectronico', 'error'))
printHtmlPart(6)
invokeTag('message','g',31,['code':("profesor.correoElectronico.label"),'default':("Correo Electronico")],-1)
printHtmlPart(2)
invokeTag('textField','g',34,['name':("correoElectronico"),'required':(""),'value':(profesorInstance?.correoElectronico)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profesorInstance, field: 'password', 'error'))
printHtmlPart(7)
invokeTag('message','g',39,['code':("profesor.password.label"),'default':("Password")],-1)
printHtmlPart(2)
invokeTag('textField','g',42,['name':("password"),'maxlength':("20"),'required':(""),'value':(profesorInstance?.password)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profesorInstance, field: 'usuario', 'error'))
printHtmlPart(8)
invokeTag('message','g',47,['code':("profesor.usuario.label"),'default':("Usuario")],-1)
printHtmlPart(2)
invokeTag('textField','g',50,['name':("usuario"),'maxlength':("15"),'required':(""),'value':(profesorInstance?.usuario)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profesorInstance, field: 'video', 'error'))
printHtmlPart(9)
invokeTag('message','g',55,['code':("profesor.video.label"),'default':("Video")],-1)
printHtmlPart(2)
invokeTag('textField','g',58,['name':("video"),'required':(""),'value':(profesorInstance?.video)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profesorInstance, field: 'constancia', 'error'))
printHtmlPart(10)
invokeTag('message','g',63,['code':("profesor.constancia.label"),'default':("Constancia")],-1)
printHtmlPart(11)
invokeTag('textField','g',66,['name':("constancia"),'value':(profesorInstance?.constancia)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: profesorInstance, field: 'horarios', 'error'))
printHtmlPart(12)
invokeTag('message','g',71,['code':("profesor.horarios.label"),'default':("Horarios")],-1)
printHtmlPart(13)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1396329916000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
