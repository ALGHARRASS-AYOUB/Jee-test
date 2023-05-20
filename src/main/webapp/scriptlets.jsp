<!-- the tag bellow is a dirictive, does not have an output or output stream just is a configuration for the JSP.
there are three type of dirictives:

page:configuration of the content page like the example bellow.
include: to include text or code or file 
Taglib : indicate a tag library that the JSP container should inerpret

  -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <!-- declarative -->
 <h3> declaration:</h3>
 <%!	public String saySomeThing(){ return "hello from declaration from head "; }  %>

 <h2>with jsp declaration xml syntax</h2>
 <jsp:declaration>
 public String saySomeThingXML(){ return "hello from declaration with xml syntax from head "; }
 </jsp:declaration>
 
</head>
<body>

<!-- 
 expression  ==> the exprssion is compiled like we make out.println(expression);
 -->
 <!-- the out is an implicit object 
 out of type JspWriter
 config of ServletConfig
 request and response of HttpServletRequest and HttpServletResponse
 session from HttpSession
 
  -->
 <h3> expressions:</h3>
 
 <%= session.getId() %>
 
 <h2>with jsp expression xml syntax</h2>
 <jsp:expression>session.getId()</jsp:expression>
 <!--  scriptlets for inserting java code that will run in the JspService method  -->
 
  <h3> scriptlet:</h3>
 <% String queString = request.getQueryString();
	out.println("attached GET DATA: "+queString);	 %>

 <h2>with jsp scriptlet xml syntax</h2>
 <jsp:scriptlet>String queryString = request.getQueryString();
	out.println("attached GET DATA: "+queString);</jsp:scriptlet>
	
	<h3>testing declarative : </h3>
	
	<h4><%= saySomeThing() %></h4>
	
 <h3>testing declarative xml syntax : </h3>
	
	<h4><%= saySomeThingXML() %></h4>
	
	
<!-- jsp actions,  include for example if we want to include some jsp page into the currenct jsp page -->
<!-- <jsp:include page="otherpage.jsp"></jsp:include> -->
<!-- 
<jsp:forward page="otherpage.jsp">
	<jsp:param name="arg1" value="val1"/>
</jsp:forward>
 -->
 <!-- 
 javaBeans are java class that have private properties and public setters and getters
  also mantain the business logic and database access logic 
  so we use the tag  jsp:useBean   uses : jsp:setProperty ,jsp:getProperty  -->
 
<!--   
<jsp:attribute page="otherpage.jsp"></jsp:attribute>
<jsp:element page="otherpage.jsp"></jsp:element>
<jsp:body page="otherpage.jsp"></jsp:body>
 -->


	



</body>
</html>