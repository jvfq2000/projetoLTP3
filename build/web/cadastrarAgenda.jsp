<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda - Cadastro</title>
    </head>
    <body>
        <h1> Datos do Agendamento </h1>
        <form id= "frmCadUsuario" method="post" action="processaInclusao.jsp" >
            Título: <input type="text" name="titulo"><br><br>
            Descrição: <input type="text" name="descricao"><br><br>
            Local: <input type="text" name="local"><br><br>
            Data e Hora: <input type="text" name="data_hora"><br><br>
            Duração: <input type="text" name="duracao"><br><br>
            <input type="submit" name="btnSalvar" value="Salvar">
        </form>
        <br>
    </body>
</html>