package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;



@Entity
@Table(name="Order")
public class Order {
	@Id
	@GeneratedValue
	@Column(name="orderid")
	private Integer orderid;
	@Column(name="orderDate")
	private String orderDate;
	
	@ManyToOne
	@JoinColumn(name="cusid")
	private Customer customer;
	
	@OneToMany(mappedBy= "order")
	private Collection<OrderDetail> orderdetail;

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order(Integer orderid, String orderDate, Customer customer, Collection<OrderDetail> orderdetail) {
		super();
		this.orderid = orderid;
		this.orderDate = orderDate;
		this.customer = customer;
		this.orderdetail = orderdetail;
	}

	public Integer getOrderid() {
		return orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Collection<OrderDetail> getOrderdetail() {
		return orderdetail;
	}

	public void setOrderdetail(Collection<OrderDetail> orderdetail) {
		this.orderdetail = orderdetail;
	}

	
	
}
