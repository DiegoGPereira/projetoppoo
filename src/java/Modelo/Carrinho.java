package Modelo;

import java.util.ArrayList;

public class Carrinho {

    private ArrayList<Produto> produtos = new ArrayList<Produto>();
    private double total;

    public Carrinho() {
    }

    public Carrinho(double total) {
        this.total = total;
    }

    public ArrayList<Produto> getProdutos() {
        return produtos;
    }

    public void setProdutos(ArrayList<Produto> produtos) {
        this.produtos = produtos;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public void addProduto(Produto p) {
        this.produtos.add(p);
    }

    public void removerProduto(Produto p) {
        this.produtos.remove(p);
    }

    public double calcularTotal() {
        double soma = 0;
        
        for(Produto p: produtos){            
            soma += p.getPreco();
        }
        
        return(soma);
    }

}
