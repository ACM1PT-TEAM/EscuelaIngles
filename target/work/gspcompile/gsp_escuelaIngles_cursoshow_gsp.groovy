import escuelaingles.Curso
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_escuelaIngles_cursoshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/curso/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'curso.label', default: 'Curso'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("list"),'action':("index")],2)
printHtmlPart(8)
createTagBody(2, {->
invokeTag('message','g',16,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',16,['class':("create"),'action':("create")],2)
printHtmlPart(9)
invokeTag('message','g',20,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(10)
if(true && (flash.message)) {
printHtmlPart(11)
expressionOut.print(flash.message)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (cursoInstance?.nombreCurso)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("curso.nombreCurso.label"),'default':("Nombre Curso")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(cursoInstance),'field':("nombreCurso")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cursoInstance?.nivel)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("curso.nivel.label"),'default':("Nivel")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(cursoInstance),'field':("nivel")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cursoInstance?.seleccion)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("curso.seleccion.label"),'default':("Seleccion")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(cursoInstance),'field':("seleccion")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cursoInstance?.dia)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("curso.dia.label"),'default':("Dia")],-1)
printHtmlPart(23)
invokeTag('formatDate','g',57,['date':(cursoInstance?.dia)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cursoInstance?.horario)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("curso.horario.label"),'default':("Horario")],-1)
printHtmlPart(25)
invokeTag('formatDate','g',66,['date':(cursoInstance?.horario)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cursoInstance?.profesor)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("curso.profesor.label"),'default':("Profesor")],-1)
printHtmlPart(27)
createTagBody(3, {->
expressionOut.print(cursoInstance?.profesor?.encodeAsHTML())
})
invokeTag('link','g',75,['controller':("profesor"),'action':("show"),'id':(cursoInstance?.profesor?.id)],3)
printHtmlPart(16)
}
printHtmlPart(28)
createTagBody(2, {->
printHtmlPart(29)
createTagBody(3, {->
invokeTag('message','g',83,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',83,['class':("edit"),'action':("edit"),'resource':(cursoInstance)],3)
printHtmlPart(30)
invokeTag('actionSubmit','g',84,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(31)
})
invokeTag('form','g',86,['url':([resource:cursoInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(32)
})
invokeTag('captureBody','sitemesh',88,[:],1)
printHtmlPart(33)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1396234194000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
