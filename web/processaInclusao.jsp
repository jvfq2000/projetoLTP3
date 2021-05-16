<%-- 
    Document   : processaInclusao
    Created on : 03/05/2021, 09:22:45
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
            String usuario = request.getParameter("login");
            String senha = request.getParameter("senha");
            Usuarios usu = new Usuarios();
            UsuarioDao usuD = new UsuarioDao();
            usu.setLogin(usuario);
            usu.setPasswd(senha);
            usuD.inserirUsuario(usu);
            response.sendRedirect("lstusuarios.jsp");
        %>
        
        
    </body>
</html>
