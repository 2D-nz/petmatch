package br.com.petmatch.model;

public class Pet {
    private String id;
   private String situacao;
   private String especie;
   private String genero;
   private String nome;
   private String raca;
   private String cor;
   private String cordosolhos;
   private String mensagem;
   private String descricao;
   private String image;
   private String data;
   private String endereco;
   private String telefone;


    public Pet(String id, String nome, String image) {
        this.id = id;
        this.nome = nome;
        this.image = image;
    }

    //CRIADO NO METODO UPDATE

    public Pet(String id, String situacao, String especie, String genero, String nome, String raca, String cor, String cordosolhos, String mensagem, String descricao, String image,String data, String endereco, String telefone) {
        this.id = id;
        this.situacao = situacao;
        this.especie = especie;
        this.genero = genero;
        this.nome = nome;
        this.raca = raca;
        this.cor = cor;
        this.cordosolhos = cordosolhos;
        this.mensagem = mensagem;
        this.descricao = descricao;
        this.image = image;
        this.data = data;
        this.endereco = endereco;
        this.telefone = telefone;

    }

    public Pet(String situacao, String especie, String genero, String nome, String raca, String cor, String cordosolhos, String mensagem, String descricao, String image, String data, String endereco, String telefone) {
        this.situacao = situacao;
        this.especie = especie;
        this.genero = genero;
        this.nome = nome;
        this.raca = raca;
        this.cor = cor;
        this.cordosolhos = cordosolhos;
        this.mensagem = mensagem;
        this.descricao = descricao;
        this.image = image;
        this.data = data;
        this.endereco = endereco;
        this.telefone = telefone;
    }

    public String getData() {
        return data;
    }

    public String getEndereco() {
        return endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getImage() {
        return image;
    }

    public String getMensagem() {
        return mensagem;
    }

    public String getDescricao() {
        return descricao;
    }

    public String getId() {
        return id;
    }

    public String getSituacao() {
        return situacao;
    }


    public String getEspecie() {
        return especie;
    }


    public String getGenero() {
        return genero;
    }

    //CRIADO NO METODO UPDATE
    public String getNome() {
        return nome;
    }

    public String getRaca() {
        return raca;
    }

    public String getCor() {
        return cor;
    }

    public String getCordosolhos() {
        return cordosolhos;
    }

}

