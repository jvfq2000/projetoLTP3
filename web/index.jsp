<%@page import="java.util.List"%>
<%@page import=" AgendaDAO.Agenda " %> 
<%@page import=" AgendaDAO.AgendaDAO " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Agenda - Lista </title>
    </head>
    <body>
    <% 
        AgendaDAO agendaDAO = new AgendaDAO();
        List<Agenda> agendamentos = agendaDAO.listar();
    %>
        
        <TABLE BORDER=1> 
            <TR> 
                <TD> Título </TD>
                <TD> Descrição </TD> 
                <TD> Local </TD>
                <TD> Data e Hora </TD>
                <TD> Duração </TD>
            </TR>
            <%    for (Agenda agendamento : agendamentos) { %>
             <TR> 
            <TD> <% out.println(agendamento.getTitulo()); %> </TD>
            <TD> <% out.println(agendamento.getDescricao()); %> </TD>
            <TD> <% out.println(agendamento.getLocal()); %> </TD>
            <TD> <% out.println(agendamento.getData_hora()); %> </TD>
            <TD> <% out.println(agendamento.getDuracao()); %> </TD>
            <TD> <a href="alterarAgenda.jsp?id=<%out.println(agendamento.getId());%>&titulo=<% out.println(agendamento.getTitulo());%>&descricao=<% out.println(agendamento.getDescricao());%>&data_hora=<% out.println(agendamento.getData_hora());%>&duracao=<% out.println(agendamento.getDuracao());%>&local=<% out.println(agendamento.getLocal());%>"> Alterar </a></TD>
            <TD> <a href="processaexclusao.jsp?id=<% out.println(agendamento.getId()); %>"> Excluir </a> </TD>
            </TR>    
           <% } %>
        </TABLE> 
        <a href="cadastrarAgenda.jsp"> Novo Agendamento </a>
    </body>
</html>