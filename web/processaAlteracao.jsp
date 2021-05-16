<%@page import="AgendaDAO.Agenda"%>
<%@page import="AgendaDAO.AgendaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Agenda - Alterar </title>
    </head>
    <body>
    <%
        Agenda agenda = new Agenda();     
        AgendaDAO agendaDAO = new AgendaDAO();
        
        int id = Integer.parseInt(request.getParameter("id").trim());
        String titulo = request.getParameter("titulo").trim();
        String descricao = request.getParameter("descricao").trim();
        String local = request.getParameter("local").trim();
        String data_hora = request.getParameter("data_hora").trim();
        String duracao = request.getParameter("duracao").trim();
        
        agenda.setId(id);
        agenda.setTitulo(titulo);
        agenda.setDescricao(descricao);
        agenda.setLocal(local);
        agenda.setData_hora(data_hora);
        agenda.setDuracao(duracao);
        agendaDAO.alterar(agenda);
        
        response.sendRedirect("index.jsp");
    %>
    </body>
</html>
