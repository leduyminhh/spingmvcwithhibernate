package com.spring.demo.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "product_similar")
public class ProductSimilar {
	@Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
	
	public ProductSimilar(int id, Product product, int id_product) {
		super();
		this.id = id;
		this.product = product;
		this.id_product = id_product;
	}
	
	
	public ProductSimilar() {
		super();
	}


	@Column(name = "id_productsimilar")
	private int id_productsimilar;
		
	@ManyToOne(cascade = CascadeType.PERSIST )
	@JoinColumn(name="id_productsimilar",referencedColumnName="id", insertable=false, updatable=false)
	Product product;
	
    @Column(name = "id_product")
    private int id_product;

	
	public int getId_product() {
		return id_product;
	}

	public void setId_product(int id_product) {
		this.id_product = id_product;
	}

	

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



}
