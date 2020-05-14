package ptithcm.controller;

import java.util.List;


import javax.transaction.Transactional;

//import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.User;

@Transactional
@Controller
public class UserController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("admin")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM User";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list = query.list();
		model.addAttribute("users", list);//Đưa dữ liệu vào model
		
		return "admin";
	}

	@RequestMapping(value = "dangky", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("user", new User());
		return "dangky";
	}

	@RequestMapping(value = "dangky", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("user") User user, BindingResult errors, @RequestParam("password1") String password1){
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (user.getUsername().trim().length() == 0) {
			errors.rejectValue("username", "user", "Vui lòng nhập tài khoản");
		}
		if (user.getPassword().trim().length() == 0) {
			errors.rejectValue("password", "user", "Vui lòng nhập mật khẩu");
		}
		
		if (user.getFullname().trim().length() == 0) {
			errors.rejectValue("fullname", "user", "Vui lòng nhập họ tên");
		}
		try {
			if (!user.getPassword().equals(password1)) {
				model.addAttribute("message", "Mật khẩu không trùng khớp!");
				return "dangky";
			}
			if (errors.hasErrors()) {
				model.addAttribute("message", "Vui lòng sửa các lỗi sau");
			} else {
				session.save(user);
				t.commit();
				model.addAttribute("message", "Tạo tài khoản thành công!");
			}

		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm thất bại!");
		} finally {
			session.close();
		}
		return "dangky";
	}

	@RequestMapping(value = "delete/{username}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable String username) {
		Session session = factory.getCurrentSession();
		try {
			User u = (User) session.get(User.class, username);
			session.delete(u);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin.htm";
	}

	@RequestMapping(value = "update1", method = RequestMethod.POST)
	public String createOrUpdate(ModelMap model, @ModelAttribute("user") User user, BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (user.getUsername().trim().length() == 0) {
			errors.rejectValue("username", "user", "Vui lòng nhập tài khoản");
		}
		if (user.getPassword().trim().length() == 0) {
			errors.rejectValue("password", "user", "Vui lòng nhập mật khẩu");
		}
		
		if (user.getFullname().trim().length() == 0) {
			errors.rejectValue("fullname", "user", "Vui lòng nhập họ tên");
		}
		try {
			if (errors.hasErrors()) {
				model.addAttribute("message", "Vui lòng nhập đầy đủ các trường");
			} else {
				session.saveOrUpdate(user);
				t.commit();
				model.addAttribute("message", "Chỉnh sửa thành công");
			}
			
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại");
		} finally {
			session.flush();
			session.close();
		}
		return "TTTaiKhoan";
	}

	@RequestMapping(value = "update/{username}", method = RequestMethod.GET)
	public String edit(ModelMap model, @PathVariable("username") String id, @ModelAttribute("user") User users) {
		User user = this.getUser(id);
		model.addAttribute("userdetail", user);
		return "update";
	}
	

	public User getUser(String username) {
		System.out.print(username);
		Session session = factory.getCurrentSession();
		String hql = "FROM User u WHERE u.username = :username";
		Query query = session.createQuery(hql).setParameter("username", username);
		@SuppressWarnings("unchecked")
		List<User> list = query.list();
		return list.size() > 0 ? list.get(0) : null;
	}
	//ĐĂNG NHẬP
	/*Cách  1:
	  @RequestMapping(value = "dangnhap", method = RequestMethod.GET)
	public String dangnhap(ModelMap model) {
		model.addAttribute("user", new Account());
		return "dangnhap";
	}

	@RequestMapping(value = "dangnhap", method = RequestMethod.POST)
	public String index(ModelMap model, @ModelAttribute("user") Account user) {

		if (user.getUser_name().equals("admin") && user.getPassword().equals("123")) {
			return "redirect:/danhsach.htm";
		}
		try {
			Session session = factory.getCurrentSession();
			String hql = "FROM Account acc WHERE acc.user_name='" + user.getUser_name() + "' AND acc.password='"
					+ user.getPassword() + "'";
			Query query = session.createQuery(hql);
			Account acc = (Account) query.uniqueResult();
			if(acc == null) {
				model.addAttribute("message", "Sai Tên đăng nhập hoặc Mật khẩu");
				return "dangnhap";
			}
//			model.addAttribute("listUser",list);
			return "giohang";
		} catch (Exception ex) {
			ex.printStackTrace();
			model.addAttribute("message", "Sai Tên đăng nhập hoặc Mật khẩu");
			return "dangnhap";
		}
	}
	  */
	
	String bien;
	
	@RequestMapping(value = "dangnhap", method = RequestMethod.GET)
	public String dangnhap(ModelMap model) {
		model.addAttribute("user", new User());
		return "dangnhap";
	}

	@RequestMapping(value="dangnhap", method=RequestMethod.POST)
	public String index(ModelMap model,
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			@ModelAttribute("user") User user){
		if(username.equals("admin")&&password.equals("123")){
			bien="1";
			return "redirect:/admin.htm";
		}
		Session session=factory.getCurrentSession();
		String hql="FROM User u WHERE u.username='"+username+"' AND u.password='"+password+"'";
		Query query=session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list=query.list();
		int count=0;
		for(@SuppressWarnings("unused") User u : list){
			count++;
		}
		if(count==1){
			for(User u : list){
				user.setUsername(u.getUsername());
				user.setPassword(u.getPassword());
				user.setFullname(u.getFullname());
			}
			bien="1";
			model.addAttribute("listUser",list);
			return "TTTaiKhoan";
		}
		else{
			model.addAttribute("message", "Sai Tên đăng nhập hoặc Mật khẩu");
			return "dangnhap";
		}
	}
	
	@RequestMapping("dangnhap")
	public String Login(ModelMap model){
		if(bien.equals("0")){
			return "dangnhap";
		}
		else{
				return "redirect:/TTTaiKhoan.htm";
		}
	}
	
	
}
