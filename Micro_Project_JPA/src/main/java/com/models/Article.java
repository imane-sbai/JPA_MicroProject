package com.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="articles")
public class Article {
	@Id @GeneratedValue( strategy=GenerationType.AUTO)
	private int codearticle;
    private String designation;
    private int stock;
    private String  categorie;
    private double prix;
    private String photo;
    private String categ;
   
    
   
  
    public Article(int codearticle, String designation, int stock, String categorie, double prix, String photo,
			String categ) {
		super();
		this.codearticle = codearticle;
		this.designation = designation;
		this.stock = stock;
		this.categorie = categorie;
		this.prix = prix;
		this.photo = photo;
		this.categ = categ;
	}


	public String getCateg() {
		return categ;
	}


	public void setCateg(String categ) {
		this.categ = categ;
	}


	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Article(int codearticle, String designation, int stock, String categorie, double prix, String photo) {
		super();
		this.codearticle = codearticle;
		this.designation = designation;
		this.stock = stock;
		this.categorie = categorie;
		this.prix = prix;
		this.photo = photo;
	}


	public int getCodearticle() {
		return codearticle;
	}


	public void setCodearticle(int codearticle) {
		this.codearticle = codearticle;
	}




	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}


	public double getPrix() {
		return prix;
	}


	public void setPrix(double prix) {
		this.prix = prix;
	}

	public String getPhoto() {
		return photo;
	}


	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@Override
    public String toString() {
        return "Article{" +
            "codearticle='" + codearticle+ '\'' +
            ", designation='" + designation + '\'' +
            ", stock='" + stock + '\'' +
            ", categorie='" + categorie + '\'' +
            ", prix='" + prix+ '\'' +
            ", photo=" + photo +
          
            '}';
        
    }
}
