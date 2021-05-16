<%-- 
    Document   : processaAlteração
    Created on : 04/05/2021, 01:40:48
    Author     : Francielle
--%>

<%@page import="AulaDao.UsuarioDao"%>
<%@page import="AulaDao.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        int id = Integer.parseInt(request.getParameter("id").trim());
        String usuario = request.getParameter("login").trim();
        String senha = request.getParameter("senha").trim();
        
        Usuarios usu = new Usuarios();     
        UsuarioDao usuD = new UsuarioDao();
        usu.setId(id);
        usu.setLogin(usuario);
        usu.setPasswd(senha);
        usuD.alteraUsuario(usu);
        
        response.sendRedirect("lstusuarios.jsp");
    %>
    
    
    </body>
</html>
