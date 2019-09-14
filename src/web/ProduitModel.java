package web;

import java.util.ArrayList;
import java.util.List;

import metier.Produits;

public class ProduitModel {
	private String MotCle;
	private Produits produit=new Produits();
	private List<Produits> produits=new ArrayList<Produits>();
	private String errors;
	private String mode="ajout";
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public Produits getProduit() {
		return produit;
	}
	public void setProduit(Produits produit) {
		this.produit = produit;
	}	
	public String getMotCle() {
		return MotCle;
	}
	public void setMotCle(String motCle) {
		this.MotCle = motCle;
	}
	public String getErrors() {
		return errors;
	}
	public void setErrors(String errors) {
		this.errors = errors;
	}
	public List<Produits> getProduits() {
		return produits;
	}
	public void setProduits(List<Produits> produits) {
		this.produits = produits;
	}
	
	
}
