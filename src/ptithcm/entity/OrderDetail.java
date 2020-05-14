package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="OrderDetail")
public class OrderDetail {
	@Id
	@GeneratedValue
	@Column(name="id")
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name="orderid")
	private Order order;
	
	@ManyToOne
	@JoinColumn(name="proid")
	private Product product;
	
	@Column(name="quantity")
	private Integer quantity;
	@Column(name="status")
	private String status;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Order getOrderid() {
		return order;
	}
	public void setOrderid(Order orderid) {
		this.order = orderid;
	}
	public Product getProid() {
		return product;
	}
	public void setProid(Product proid) {
		this.product = proid;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public OrderDetail(Integer id, Order orderid, Product proid, Integer quantity, String status) {
		super();
		this.id = id;
		this.order = orderid;
		this.product = proid;
		this.quantity = quantity;
		this.status = status;
	}
	public OrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
