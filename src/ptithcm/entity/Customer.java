package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Customer")
public class Customer {
@Id
@GeneratedValue
@Column(name="cusid")
private Integer cusid;
@Column(name="cusname")
private String cusname;
@Column(name="address")
private String address;
@Column(name="email")
private String email;
@Column(name="phone")
private String phone;

@OneToMany(mappedBy="customer")
private Collection<Order> order;

public Integer getCusid() {
	return cusid;
}

public void setCusid(Integer cusid) {
	this.cusid = cusid;
}

public String getCusname() {
	return cusname;
}

public void setCusname(String cusname) {
	this.cusname = cusname;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public Collection<Order> getOrders() {
	return order;
}

public void setOrders(Collection<Order> orders) {
	this.order = orders;
}

public Customer(Integer cusid, String cusname, String address, String email, String phone, Collection<Order> orders) {
	super();
	this.cusid = cusid;
	this.cusname = cusname;
	this.address = address;
	this.email = email;
	this.phone = phone;
	this.order = orders;
}

public Customer() {
	super();
	// TODO Auto-generated constructor stub
}


}
