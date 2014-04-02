import escuelaingles.Curso
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_escuelaIngles_curso_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/curso/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: cursoInstance, field: 'nombreCurso', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("curso.nombreCurso.label"),'default':("Nombre Curso")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("nombreCurso"),'required':(""),'value':(cursoInstance?.nombreCurso)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: cursoInstance, field: 'nivel', 'error'))
printHtmlPart(4)
invokeTag('message','g',15,['code':("curso.nivel.label"),'default':("Nivel")],-1)
printHtmlPart(2)
invokeTag('textField','g',18,['name':("nivel"),'required':(""),'value':(cursoInstance?.nivel)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: cursoInstance, field: 'seleccion', 'error'))
printHtmlPart(5)
invokeTag('message','g',23,['code':("curso.seleccion.label"),'default':("Seleccion")],-1)
printHtmlPart(2)
invokeTag('field','g',26,['name':("seleccion"),'type':("number"),'value':(cursoInstance.seleccion),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: cursoInstance, field: 'dia', 'error'))
printHtmlPart(6)
invokeTag('message','g',31,['code':("curso.dia.label"),'default':("Dia")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',34,['name':("dia"),'precision':("day"),'value':(cursoInstance?.dia)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: cursoInstance, field: 'horario', 'error'))
printHtmlPart(7)
invokeTag('message','g',39,['code':("curso.horario.label"),'default':("Horario")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',42,['name':("horario"),'precision':("day"),'value':(cursoInstance?.horario)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: cursoInstance, field: 'profesor', 'error'))
printHtmlPart(8)
invokeTag('message','g',47,['code':("curso.profesor.label"),'default':("Profesor")],-1)
printHtmlPart(2)
invokeTag('select','g',50,['id':("profesor"),'name':("profesor.id"),'from':(escuelaingles.Profesor.list()),'optionKey':("id"),'required':(""),'value':(cursoInstance?.profesor?.id),'class':("many-to-one")],-1)
printHtmlPart(9)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1396234198000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
