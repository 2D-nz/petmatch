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


    public Pet(String situacao, String especie, String genero) {
        this.situacao = situacao;
        this.especie = especie;
        this.genero = genero;
    }

    //CRIADO NO METODO UPDATE


    public Pet(String id, String situacao, String especie, String genero) {
        this.id = id;
        this.situacao = situacao;
        this.especie = especie;
        this.genero = genero;
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

    public void setNome(String nome) {
        this.nome = nome;
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

