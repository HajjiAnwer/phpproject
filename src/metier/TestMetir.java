package metier;

import java.util.List;

public class TestMetir {

	public static void main(String[] args) {
		ICatalogueMetier metier= new CatalogueMetierImpl();
		/*metier.addproduit(new Produits("REF05", "aa", 870, 3));
		metier.addproduit(new Produits("REF06", "bb", 570, 31));
		metier.addproduit(new Produits("REF07", "cc", 670, 13));
	*/
		System.out.println("-----------------------------");
		List<Produits> prod=metier.listProduit();
		for(Produits p:prod) {
			System.out.println(p.getDesignation());
		}
		System.out.println("------------------------------");
		List<Produits> prod1=metier.produitParMc("HP");
		for(Produits p:prod1) {
			System.out.println(p.getDesignation());
		}
		System.out.println("------------------------------");
		try {
		Produits p=metier.getProduit("REF06");
		System.out.println(p.getDesignation());
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		System.out.println("------------------------------");
		try {
			Produits p=metier.getProduit("REF06");
			p.setPrix(90000);
			metier.updateProduit(p);
			Produits p2=metier.getProduit("REF06");
			System.out.println(p2.getPrix());
		}
		catch(Exception e) {
				System.out.println(e.getMessage());
		}
		System.out.println("------------------");
		metier.deleteProduit("REF06");
		
	}

}
