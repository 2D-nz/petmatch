package br.com.petmatch.model;

public class User {
    private String id;
    private String email;
    private String password;
    private String nome;
    private String bairro;
    private String cidade;
    private String foto;
    private String telefone;

    public String getBairro() {
        return bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public User(String email) {
        this.email = email;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    @Override
    public String toString() {
        return "User [email=" + email + ", password=" + password + ", nome=" + nome + ", bairro=" + bairro + ", cidade="
                + cidade + ", foto=" + foto + ", telefone=" + telefone + "]";
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public User(String id,String email, String nome, String foto, String telefone, String bairro, String cidade) {
        this.id = id;
        this.email = email;
        this.nome = nome;
        this.foto = foto;
        this.telefone = telefone;
        this.bairro = bairro;
        this.cidade = cidade;

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public User(String email, String nome, String password) {
        this.email = email;
        this.password = password;
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

}
