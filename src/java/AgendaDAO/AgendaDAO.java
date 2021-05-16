package AgendaDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AgendaDAO {
    private final Connection conn;

    public AgendaDAO() throws SQLException {
        this.conn = conexao.Conectar.conectar();
    }
    
    public void inserir(Agenda agenda) throws SQLException{
        String sqlInsert = "INSERT INTO agenda(agenda_titulo,agenda_descricao,agenda_data_hora,agenda_duracao,agenda_local) VALUES(?,?,?,?,?)";
        PreparedStatement stmtInsert = this.conn.prepareStatement(sqlInsert);
        stmtInsert.setString(1, agenda.getTitulo());
        stmtInsert.setString(2, agenda.getDescricao());
        stmtInsert.setString(3, agenda.getData_hora());
        stmtInsert.setString(4, agenda.getDuracao());
        stmtInsert.setString(5, agenda.getLocal());
        stmtInsert.execute();
        stmtInsert.close();   
    }

    public List<Agenda> listar() throws SQLException{
        String sqlList = "SELECT * FROM agenda";
        PreparedStatement stmtListAgenda = this.conn.prepareStatement(sqlList);
        ResultSet resultList = stmtListAgenda.executeQuery();
        List<Agenda> listAgenda = new ArrayList<>();
        
        while (resultList.next()) {
            Agenda agenda = new Agenda();
            agenda.setId(resultList.getInt("agenda_id"));
            agenda.setTitulo(resultList.getString("agenda_titulo"));
            agenda.setDescricao(resultList.getString("agenda_descricao"));
            agenda.setData_hora(resultList.getString("agenda_data_hora"));
            agenda.setDuracao(resultList.getString("agenda_duracao"));
            agenda.setLocal(resultList.getString("agenda_local"));
            listAgenda.add(agenda);
        }
        
        resultList.close();
        stmtListAgenda.close();
        return listAgenda;
    }

    public void alterar(Agenda agenda) throws SQLException{
        String sqlAltera = "UPDATE agenda SET agenda_titulo = ?, agenda_descricao = ?,agenda_data_hora = ?,agenda_duracao = ?,agenda_local = ? WHERE agenda_id = ?";
        PreparedStatement stmtAltera = this.conn.prepareStatement(sqlAltera);
        stmtAltera.setString(1, agenda.getTitulo());
        stmtAltera.setString(2, agenda.getDescricao());
        stmtAltera.setString(3, agenda.getData_hora());
        stmtAltera.setString(4, agenda.getDuracao());
        stmtAltera.setString(5, agenda.getLocal());
        stmtAltera.setInt(6, agenda.getId());
        stmtAltera.execute();
        stmtAltera.close();
    }

    public void excluir(int id_agenda) throws SQLException{
        String sqlExcluir = "DELETE FROM agenda WHERE agenda_id=?";
        PreparedStatement stmtExcluirAgenda = this.conn.prepareStatement(sqlExcluir);
        stmtExcluirAgenda.setInt(1, id_agenda);
        stmtExcluirAgenda.execute();
        stmtExcluirAgenda.close();
    }
}