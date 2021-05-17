<%@page import="AgendaDAO.AgendaDAO"%>
<%@page import="AgendaDAO.Agenda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda - Cadastro</title>
    </head>
    <body>
        
        <%
            Agenda agenda = new Agenda();
            AgendaDAO agendaDAO = new AgendaDAO();
            
            String titlo = request.getParameter("titulo");
            String descricao = request.getParameter("descricao");
            String data_hora = request.getParameter("data_hora");
            String duracao = request.getParameter("duracao");
            String local = request.getParameter("local");
            
            agenda.setTitulo(titlo);
            agenda.setDescricao(descricao);
            agenda.setData_hora(data_hora);
            agenda.setDuracao(duracao);
            agenda.setLocal(local);
            
            agendaDAO.inserir(agenda);
            response.sendRedirect("index.jsp");
        %>
        
        
    </body>
</html>
