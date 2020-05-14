package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.entity.Product;
import ptithcm.entity.User;

@Transactional
@Controller
//@RequestMapping("PageProduct")
public class PageProductController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("Doxa")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proid like :keyword";
		//select fieldA from tableA where fieldB like '%:searchKey%'"
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "DX" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("dx", list);
		return "doxa";
	}
	@RequestMapping("Casio")
	public String Casio(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proid like :keyword";
		//select fieldA from tableA where fieldB like '%:searchKey%'"
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "CS" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("cs", list);
		return "casio";
	}
	@RequestMapping("Citizen")
	public String Citizen(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proid like :keyword";
		//select fieldA from tableA where fieldB like '%:searchKey%'"
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "CT" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("ct", list);
		return "citizen";
	}
	@RequestMapping("Seiko")
	public String Seiko(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proid like :keyword";
		//select fieldA from tableA where fieldB like '%:searchKey%'"
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "SK" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("sk", list);
		return "seiko";
	}
	@RequestMapping("Orient")
	public String Orient(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proid like :keyword";
		//select fieldA from tableA where fieldB like '%:searchKey%'"
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "OR" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("o", list);
		return "Orient";
	}
	@RequestMapping("Candino")
	public String Candino(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proid like :keyword";
		//select fieldA from tableA where fieldB like '%:searchKey%'"
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "CD" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("cd", list);
		return "candino";
	}
	@RequestMapping("DHDT")
	public String DHDT(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proid like :keyword";
		//select fieldA from tableA where fieldB like '%:searchKey%'"
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "CS" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("dt", list);
		return "DHDT";
	}
	@RequestMapping("Limited")
	public String Limited(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where price > 600000";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("lm", list);
		return "limited";
	}
	@RequestMapping("DHNam")
	public String DHNam(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proname like :keyword";
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "NAM" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("nam", list);
		return "DHNam";
	}
	@RequestMapping("DHNu")
	public String DHNu(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proname like :keyword";
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "NỮ" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("nu", list);
		return "DHNu";
	}
	@RequestMapping("DHCap")
	public String DHCap(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proname like :keyword";
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "CẶP ĐÔI" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("doi", list);
		return "DHCap";
	}
	@RequestMapping("Dda")
	public String Dda(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proname like :keyword";
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "DÂY DA" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("da", list);
		return "Dda";
	}
	@RequestMapping("Dcaosu")
	public String Dcaosu(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proname like :keyword";
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "DÂY CAO SU" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("caosu", list);
		return "Dcaosu";
	}
	@RequestMapping("DayKimLoai")
	public String DayKimLoai(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Product where proname like :keyword";
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "DÂY KIM LOẠI" + "%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("kl", list);
		return "DayKimLoai";
	}
}
