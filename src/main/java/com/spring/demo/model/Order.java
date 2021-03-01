package com.spring.demo.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "orders")
public class Order {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "customername")
    private String customername;
    
    @Column(name = "create_at")
    private Date create_at;
    
    @Column(name = "update_at")
    private Date update_at;

    @Column(name = "status")
    private int status;
    
	public Order() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCustomername() {
		return customername;
	}

	public void setCustomername(String customername) {
		this.customername = customername;
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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Order(int id, String customername, Date create_at, Date update_at, int status) {

		this.customername = customername;
		this.create_at = create_at;
		this.update_at = update_at;
		this.status = status;
	}

	public Order(String customername, Date create_at, int status) {
		super();
		this.customername = customername;
		this.create_at = create_at;
		this.status = status;
	}
	
	
	
    
   
}