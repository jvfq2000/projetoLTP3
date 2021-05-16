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
          <h1> Cadastro de Usuarios</h1>
          <form id= "frmCadUsuario" method="post" action="processaInclusao.jsp" >
            Login: <input type="text" name="login"><br><br>
            Senha: <input type="password" name="senha" >
            <br><br>
        <input type="submit" name="btnSalvar" value="Salvar">
        </form>
        <br>
    </body>

    </body>
</html>
