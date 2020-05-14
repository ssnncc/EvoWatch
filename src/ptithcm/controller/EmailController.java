package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Customer;



@Transactional
@Controller
@RequestMapping("Email")
public class EmailController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("dsemail")
	public String sanpham(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Customer";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Customer> list = query.list();
		model.addAttribute("dsm", list);
		return "dsemail";
	}
	@RequestMapping(value = "email", method = RequestMethod.GET)
	public String email(ModelMap model) {
		model.addAttribute("cus", new Customer());
		return "email";
	}

	@RequestMapping(value = "email", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("cus") Customer cus, BindingResult errors){
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (cus.getEmail().trim().length() == 0) {
			errors.rejectValue("email", "cus", "Vui lòng nhập địa chỉ Email");
		}
		if (cus.getCusname().trim().length() == 0) {
			errors.rejectValue("cusname", "cus", "Vui lòng nhập họ và tên");
		}
		if (cus.getAddress().trim().length() == 0) {
			errors.rejectValue("address", "cus", "Vui lòng nhập địa chỉ");
		}if (cus.getPhone().trim().length() == 0) {
			errors.rejectValue("phone", "cus", "Vui lòng nhập số điện thoại");
		}
		try {
			if (errors.hasErrors()) {
				model.addAttribute("message", "Vui lòng sửa các lỗi sau");
			} else {
				session.save(cus);
				t.commit();
				//model.addAttribute("message", "Đăng ký thành công!");
				model.addAttribute("message", "Sản phẩm của bạn sẽ được giao trong vài ngày tới!");
			}

		} catch (Exception e) {
			t.rollback();
			//model.addAttribute("message", "Đăng lý thất bại!");
			model.addAttribute("message", "Mua hàng thất bại!");
		} finally {
			session.close();
		}
		return "email";
	}
	/*
	
	//Xóa
		@RequestMapping(value = "delete/{email}", method = RequestMethod.GET)
		public String delete(ModelMap model, @PathVariable("email") String email) {
			Session session = factory.getCurrentSession();
			try {
				Customer cus = (Customer) session.get(Customer.class, email);
				session.delete(cus);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			return "redirect:/Email/dsemail.htm";
		}
		
		//Sửa
		@RequestMapping(value = "updateSP1", method = RequestMethod.POST)
		public String createOrUpdate(ModelMap model, @ModelAttribute("sp") Product sp) {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				session.saveOrUpdate(sp);
				t.commit();
				model.addAttribute("message", "Sửa thành công");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message", "Sửa thất bại");
			} finally {
				session.flush();
				session.close();
			}
			return "redirect:/product/dssanpham.htm";
		}

		@RequestMapping(value = "update/{proid}", method = RequestMethod.GET)
		public String edit(ModelMap model, @PathVariable("proid") String id, @ModelAttribute("sp") Product sp) {
			Product sanpham = this.getSanPham(id);
			model.addAttribute("spdt",sanpham);
			return "updateSP";
		}
		

		public Product getSanPham(String proid) {
			System.out.print(proid);
			Session session = factory.getCurrentSession();
			String hql = "FROM Product u WHERE u.proid = :proid";
			Query query = session.createQuery(hql).setParameter("proid", proid);
			List<Product> list = query.list();
			return list.size() > 0 ? list.get(0) : null;
		}
	}
*/
}
