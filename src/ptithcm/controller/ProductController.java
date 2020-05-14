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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import ptithcm.entity.Product;


@Transactional
@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("dssanpham")
	public String sanpham(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("sp", list);
		return "dssanpham";
	}

	//Thêm 
			@RequestMapping(value = "insertSP", method = RequestMethod.GET)
			public String insert(ModelMap model) {
				model.addAttribute("sp", new Product());
				return "insertSP";
			}

			@RequestMapping(value = "insertSP", method = RequestMethod.POST)
			public String insert(ModelMap model, @ModelAttribute("sp") Product sp,BindingResult errors) {
				Session session = factory.openSession();
				Transaction t = session.beginTransaction();
				
				if (sp.getProid().trim().length() == 0) {
					errors.rejectValue("proid", "sp", "Vui lòng nhập mã sản phẩm");
				}
				if (sp.getProname().trim().length() == 0) {
					errors.rejectValue("proname", "sp", "Vui lòng nhập tên sản phẩm");
				}if (sp.getImage().trim().length() == 0) {
					errors.rejectValue("image", "sp", "Vui lòng nhập tên hình ảnh");
				}
				if (sp.getIsValid().trim().length() == 0) {
					errors.rejectValue("isValid", "sp", "Vui lòng nhập trạng thái");
				}
				if (sp.getPrice()==null) {
					errors.rejectValue("price", "sp", "Vui lòng nhập giá");
				}
				try {
					if (errors.hasErrors()) {
						model.addAttribute("message", "Vui lòng sửa các lỗi sau");
					} else {
						session.save(sp);
						t.commit();
						model.addAttribute("message", "Thêm thành công!");
						return "redirect:/product/dssanpham.htm";
					}
				} catch (Exception e) {
					t.rollback();
					model.addAttribute("message", "Thêm thất bại !");
				} finally {
					session.close();
				}
				return "insertSP";
			}
	
			//Xóa
	@RequestMapping(value = "delete/{proid}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable("proid") String prod) {
		Session session = factory.getCurrentSession();
		try {
			Product sp1 = (Product) session.get(Product.class, prod);
			session.delete(sp1);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/product/dssanpham.htm";
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
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		return list.size() > 0 ? list.get(0) : null;
	}
}
