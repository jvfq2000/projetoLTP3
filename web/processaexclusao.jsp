<%-- 
    Document   : processaexclusao
    Created on : 03/05/2021, 09:35:48
    Author     : Francielle
--%>

<%@page import="AulaDao.Usuarios"%>
<%@page import="AulaDao.UsuarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
     int id = Integer.parseInt(request.getParameter("id_user"));
     Usuarios usu = new Usuarios();
     UsuarioDao usuD = new UsuarioDao();
     usu.setId(id);
     usuD.excluirUsuario(usu);
     response.sendRedirect("lstusuarios.jsp");
     %>  
        
        
        
    </body>
</html>
