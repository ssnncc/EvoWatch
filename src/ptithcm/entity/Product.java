package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Product")
public class Product {
	@Id
	@Column(name="proid")
	private String proid;
	
	@Column(name="proname")
	private String proname;
	
	@Column(name="price")
	private Float price;
	
	@Column(name="image")
	private String image;
	 
	@Column(name="isValid")
	private String isValid;
	
	@OneToMany(mappedBy="product")
	private Collection<OrderDetail> orderdetail;

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(String proid, String proname, Float price, String image, String isValid,
			Collection<OrderDetail> orderdetail) {
		super();
		this.proid = proid;
		this.proname = proname;
		this.price = price;
		this.image = image;
		this.isValid = isValid;
		this.orderdetail = orderdetail;
	}

	public String getProid() {
		return proid;
	}

	public void setProid(String proid) {
		this.proid = proid;
	}

	public String getProname() {
		return proname;
	}

	public void setProname(String proname) {
		this.proname = proname;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getIsValid() {
		return isValid;
	}

	public void setIsValid(String isValid) {
		this.isValid = isValid;
	}

	public Collection<OrderDetail> getOrderdetail() {
		return orderdetail;
	}

	public void setOrderdetail(Collection<OrderDetail> orderdetail) {
		this.orderdetail = orderdetail;
	}
	
}
