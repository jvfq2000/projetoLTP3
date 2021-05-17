<%@page import="java.util.List"%>
<%@page import=" AgendaDAO.Agenda " %> 
<%@page import=" AgendaDAO.AgendaDAO " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Agenda - Lista </title>
        
        <style>
            body{
                background-image:url("img/fundo.jpg");
                        background-attachment:fixed;
                        background-size:100%;
                        background-repeat:no-repeat;
            }
        </style>
    </head>
    <body>
    <% 
        AgendaDAO agendaDAO = new AgendaDAO();
        List<Agenda> agendamentos = agendaDAO.listar();
    %>
        <br>
      <div class="container shadow-lg p-3 col-md-8 mb-5 bg-white rounded">
        <h1 class="text-center shadow p-3">Lista de Agendamentos</h1>
        <br>
        <a class="shadow-lg btn btn-outline-success" href="cadastrarAgenda.jsp"> Novo Agendamento </a>
        <br>
        <br>
        <div style="overflow: auto; max-height: 600px;">
        <table class="table table-striped table-dark">
            <thead>
              <tr>
                <th scope="col">Título</th>
                <th scope="col">Descrição</th>
                <th scope="col">Local</th>
                <th scope="col">Data e Hora</th>
                <th scope="col">Duração</th>
                <th scope="col">Ações</th>
              </tr>
            </thead>
            <tbody>
              <%    for (Agenda agendamento : agendamentos) { %>
              <tr>
                <td><% out.println(agendamento.getTitulo()); %></td>
                <td><% out.println(agendamento.getDescricao()); %></td>
                <td><% out.println(agendamento.getLocal()); %></td>
                <td><% out.println(agendamento.getData_hora()); %></td>
                <td><% out.println(agendamento.getDuracao()); %></td>
                <td>
                  <a class="btn btn-outline-primary" href="alterarAgenda.jsp?id=<%out.println(agendamento.getId());%>&titulo=<% out.println(agendamento.getTitulo());%>&descricao=<% out.println(agendamento.getDescricao());%>&data_hora=<% out.println(agendamento.getData_hora());%>&duracao=<% out.println(agendamento.getDuracao());%>&local=<% out.println(agendamento.getLocal());%>"> Alterar </a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-outline-danger" href="processaexclusao.jsp?id=<% out.println(agendamento.getId()); %>"> Excluir </a>
                </td>
              </tr>
              <% } %>
            </tbody>
        </table>
        <div> 
      </div>
    </body>
</html>