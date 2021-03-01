package com.spring.demo.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "product")
public class Product {
	@Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "title")
    private String title;
    
    @Column(name = "status")
    private int status;

    @Column(name = "description")
    private String description;
    
    @Column(name = "price")
    private float price;
    
    @Column(name = "create_at")
    private Date create_at;
    
    @Column(name = "update_at")
    private Date update_at;

    @Column(name = "price_net")
    private float price_net;
    
    @Column(name = "available")
    private int available;
    
    @Column(name = "sold")
    private int sold;
    
    @Column(name = "discount")
    private int discount;
    
    @Column(name = "image")
    private String image;
    
    @Column(name = "cover")
    private boolean cover;
    
    @Column(name = "hot_deal")
    private boolean hot_deal;
    
    @Column(name = "hot_new")
    private boolean hot_new;
    
    @Column(name = "hot_best")
    private boolean hot_best;
    
    @Column(name = "trend")
    private boolean trend;
    
    @Column(name = "latest_review")
    private boolean latest_review;
    
    @Column(name = "id_category")
    private int id_category;
     
    
    
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
	public Product() {
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getPrice_net() {
		return price_net;
	}

	public void setPrice_net(float price_net) {
		this.price_net = price_net;
	}

	public int getAvailable() {
		return available;
	}

	public void setAvailable(int available) {
		this.available = available;
	}

	public int getSold() {
		return sold;
	}

	public void setSold(int sold) {
		this.sold = sold;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public boolean getCover() {
		return cover;
	}

	public void setCover(boolean cover) {
		this.cover = cover;
	}

	public boolean getHot_deal() {
		return hot_deal;
	}

	public void setHot_deal(boolean hot_deal) {
		this.hot_deal = hot_deal;
	}

	public boolean getHot_new() {
		return hot_new;
	}

	public void setHot_new(boolean hot_new) {
		this.hot_new = hot_new;
	}

	public boolean getHot_best() {
		return hot_best;
	}

	public void setHot_best(boolean hot_best) {
		this.hot_best = hot_best;
	}

	public boolean getTrend() {
		return trend;
	}

	public void setTrend(boolean trend) {
		this.trend = trend;
	}

	public boolean getLatest_review() {
		return latest_review;
	}

	public void setLatest_review(boolean latest_review) {
		this.latest_review = latest_review;
	}

	public int getId_category() {
		return id_category;
	}

	public void setId_category(int id_category) {
		this.id_category = id_category;
	}

	public Product(int id, String title, int status, String description, float price, float price_net, int available,
			int sold, int discount, String image, boolean cover, boolean hot_deal, boolean hot_new, boolean hot_best,
			boolean trend, boolean latest_review, int id_category) {
		super();
		this.id = id;
		this.title = title;
		this.status = status;
		this.description = description;
		this.price = price;
		this.price_net = price_net;
		this.available = available;
		this.sold = sold;
		this.discount = discount;
		this.image = image;
		this.cover = cover;
		this.hot_deal = hot_deal;
		this.hot_new = hot_new;
		this.hot_best = hot_best;
		this.trend = trend;
		this.latest_review = latest_review;
		this.id_category = id_category;
	}
    
    

   
}