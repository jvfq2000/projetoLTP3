<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Agenda - Alterar </title>
    </head>
    <body>
        <% 
            int id = Integer.parseInt(request.getParameter("id").trim());
            String titulo = request.getParameter("titulo").trim();
            String descricao = request.getParameter("descricao").trim();
            String data_hora = request.getParameter("data_hora").trim();
            String duracao = request.getParameter("duracao").trim();
            String local = request.getParameter("local").trim();
        %>
        <h1> Dados do Agendamento </h1>
        <form id= "frmAlterausuario" method="post" action="processaAlteracao.jsp" >
            <input type="text" name="id" value="<% out.println(id); %>" style="display: none" ><br><br>
            Título: <input type="text" name="titulo" value="<% out.println(titulo); %>"><br><br>
            Descrição: <input type="text" name="descricao" value="<% out.println(descricao); %>"><br><br>
            Local: <input type="text" name="local" value="<% out.println(local); %>"><br><br>
            Data e Hora: <input type="text" name="data_hora" value="<% out.println(data_hora); %>"><br><br>
            Duração: <input type="text" name="duracao" value="<% out.println(duracao); %>"><br><br>
            <br><br>
            <input type="submit" name="btnSalvar" value="Salvar">
        </form>
        <br>
    </body>
</html>
