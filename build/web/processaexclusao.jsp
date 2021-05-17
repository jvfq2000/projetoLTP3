<%@page import="AgendaDAO.AgendaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Agenda - Excluir </title>
    </head>
    <body>
    <%
        AgendaDAO agendaDAO = new AgendaDAO();
        int agenda_id = Integer.parseInt(request.getParameter("id"));

        agendaDAO.excluir(agenda_id);
        response.sendRedirect("index.jsp");
    %> 
    </body>
</html>