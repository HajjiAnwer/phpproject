package metier;

import java.util.List;

public interface ICatalogueMetier <T,V> {

	public void addproduit(Produits p);
	public List<T> listProduit();
	public List<Produits> produitParMc(String mc);
	public Produits getProduit(String ref);
	public void updateProduit(Produits p);
	public void deleteProduit(String ref);
	
}
