package org.example.domain;

/**
 * @author alunocmc
 */
public class Produto {
    private int id;
    private String descricao;
    private double preco;
    private String imagem;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    @Override
    public boolean equals(Object o) {
        try {
            Produto p = (Produto) o;
            return p.getId() == this.id;

        } catch (Exception e) {
            return false;
        }
    }
}
