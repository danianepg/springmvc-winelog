package br.com.danianepg.springmvcwinelog.domain;

import java.math.BigDecimal;
import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.format.annotation.DateTimeFormat;

@Document
public class Wine {
	
	@Id
	private String id;
	
	@NotNull(message = "Name is required!")
	@NotEmpty(message = "Name can't be empty!")
	private String name;
	
	private String type;
	
	private String winery;
	
	@Min(value = 1990, message = "Year must be greater than 1990!")
	private Integer year;
	
	private String country;
	
	@Min(value = (long) 0.01, message = "Price must be greater than 0.01!")
	private BigDecimal price;
	
	@Min(value = 0, message = "Grade must be greater than 0!")
	private Integer grade;
	
	private String image;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dateConsumption;
	
	private String personalNotes;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getWinery() {
		return winery;
	}

	public void setWinery(String winery) {
		this.winery = winery;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getDateConsumption() {
		return dateConsumption;
	}

	public void setDateConsumption(Date dateConsumption) {
		this.dateConsumption = dateConsumption;
	}

	public String getPersonalNotes() {
		return personalNotes;
	}

	public void setPersonalNotes(String personalNotes) {
		this.personalNotes = personalNotes;
	}

}
