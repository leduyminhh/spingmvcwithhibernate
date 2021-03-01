package com.spring.demo.model;


import java.util.Date;

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
@Table(name = "order_detail")
public class OrderDetail {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "amount")
    private double amount;

    @Column(name = "price")
    private double price;
    
    @Column(name = "quantity")
    private int quantity;
    
    @Column(name = "order_id")
    private int order_id;
    
    @Column(name = "product_id")
    private int product_id;
    
    @Column(name = "create_at")
    private Date create_at;
    
    @Column(name = "update_at")
    private Date update_at;

    @ManyToOne(cascade = CascadeType.PERSIST )
	@JoinColumn(name="order_id",referencedColumnName="id", insertable=false, updatable=false)
    Order order;
    
    
    
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	
	public Date getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Date create_at) {
		this.create_at = create_at;
	}

	public Date getUpdate_at() {
		return update_at;
	}

	public void setUpdate_at(Date update_at) {
		this.update_at = update_at;
	}

	public OrderDetail() {
		super();
	}

	public OrderDetail(double amount, double price, int quantity, int order_id, int product_id, Date create_at,
			Date update_at) {
		super();
		this.amount = amount;
		this.price = price;
		this.quantity = quantity;
		this.order_id = order_id;
		this.product_id = product_id;
		this.create_at = create_at;
		this.update_at = update_at;
	}
    
    

	
}