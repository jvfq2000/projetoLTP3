<%-- 
    Document   : index
    Created on : 02/05/2021, 19:14:54
    Author     : Francielle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            int id = Integer.parseInt(request.getParameter("id_user").trim());
            String usuario = request.getParameter("login_user").trim();
            String senha = request.getParameter("passwd_user").trim();
        %>
          <h1> Cadastro de Usuarios</h1>
          <form id= "frmAlterausuario" method="post" action="processaAlteracao.jsp" >
              <input type="text" name="id" value="<% out.println(id); %>" style="display: none" ><br><br>
              Login: <input type="text" name="login" value="<% out.println(usuario); %>"><br><br>
              Senha: <input type="password" name="senha" value="<% out.println(senha); %>" >
            <br><br>
        <input type="submit" name="btnSalvar" value="Salvar">
        </form>
        <br>
    </body>

    </body>
</html>
