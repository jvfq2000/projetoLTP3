package AgendaDAO;

public class Agenda {
    private int id;
    private String titulo;
    private String descricao;
    private String data_hora;
    private String duracao;
    private String local;

    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    
    public String getTitulo() {
        return titulo;
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    
    public String getDescricao() {
        return descricao;
    }
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    
    public String getData_hora() {
        return data_hora;
    }
    public void setData_hora(String data_hora) {
        this.data_hora = data_hora;
    }

    
    public String getDuracao() {
        return duracao;
    }
    public void setDuracao(String duracao) {
        this.duracao = duracao;
    }

    
    public String getLocal() {
        return local;
    }
    public void setLocal(String local) {
        this.local = local;
    }
}
