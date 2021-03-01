package com.spring.demo.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "category")
public class Category {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "title")
    private String title;
    
    @Column(name = "description")
    private String description;

    @Column(name = "review")
    private String review;
    
    @Column(name = "parent")
    private int parent;

    @Column(name = "status")
    private int status;
    
    @Column(name = "create_at")
    private Date create_at;
    
    @Column(name = "update_at")
    private Date update_at;
    
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Category() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public int getParent() {
		return parent;
	}

	public void setParent(int parent) {
		this.parent = parent;
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

	public Category(String title, String description, String review, int parent, int status, Date create_at,
			Date update_at) {
		super();
		this.title = title;
		this.description = description;
		this.review = review;
		this.parent = parent;
		this.status = status;
		this.create_at = create_at;
		this.update_at = update_at;
	}

	public Category(int id, String title, String description, String review, int parent, int status, Date create_at,
			Date update_at) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.review = review;
		this.parent = parent;
		this.status = status;
		this.create_at = create_at;
		this.update_at = update_at;
	}
	

    

   
}