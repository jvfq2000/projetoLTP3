<%-- 
    Document   : lstusuarios
    Created on : 02/05/2021, 19:10:59
    Author     : Francielle
--%>
<%@page import="java.util.List"%>
<%@page import=" AulaDao.Usuarios " %> 
<%@page import=" AulaDao.UsuarioDao " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar os usuários do sistema</title>
    </head>
    <body>
    <% 
         UsuarioDao usuD = new UsuarioDao();
         List<Usuarios> lstUsuario = usuD.listaUsuarios();
    %>
        
        <TABLE BORDER=1> 
            <TR> 
                <TD>USUARIO </TD>
                <TD>SENHA</TD> 
                <TD>ALTERAR</TD>
                 <TD>DELETAR</TD>
            </TR>
            <%    for (Usuarios usu : lstUsuario) { %>
             <TR> 
            <TD> <% out.println(usu.getLogin()); %> </TD>
            <TD> <% out.println(usu.getPasswd()); %> </TD>
            <TD> <a href="alterausuario.jsp?id_user=<%out.println(usu.getId());%>&login_user=<% out.println(usu.getLogin());%>&passwd_user=<% out.println(usu.getPasswd());%>"> Alterar </a></TD>
            <TD> <a href="processaexclusao.jsp?id_user=<% out.println(usu.getId()); %>"> Excluir  </a> </TD>
            </TR>    
           <% } %>
        </TABLE> 
        <a href="index.jsp"> Ir para página inicial </a>
    </body>
</html>
