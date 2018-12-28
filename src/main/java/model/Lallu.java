package model;

public class Lallu {

	int id = 1;
	
	String name="vasudev";
	
//	@Override
//	public String toString() {
//		return "Lallu [id=" + id + ", name=" + name + "]";
//	}



	public static void main(String[] args) {
		
		System.out.println( new Lallu() );
	
		Lallu lalji = new Lallu();
		
		lalji.name = "lalji";
		lalji.id = 2;
		
		System.out.println( lalji );
		
	}
	
}
