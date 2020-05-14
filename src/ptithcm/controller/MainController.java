package ptithcm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



import ptithcm.bean.Cart;

@Controller
public class MainController {

	@RequestMapping("/home")
	public String index() {
		
		return "index";
	}
	@RequestMapping("/DoiHang")
	public String DoiHang() {
		
		return "DoiHang";
	}
	@RequestMapping("/FAQ")
	public String FAQ() {
		
		return "FAQ";
	}
	@RequestMapping("/VanChuyen")
	public String VanChuyen() {
		
		return "VanChuyen";
	}
	@RequestMapping("/ThanhToan")
	public String ThanhToan() {
		
		return "ThanhToan";
	}
	
	@RequestMapping("/header")
	public String Header() {
		
		return "header";
	}
	@RequestMapping("/Footer")
	public String Footer() {
		
		return "footer";
	}
	
	@RequestMapping("/TuVan")
	public String TuVan() {
		
		return "tuvan";
	}
	List<Cart> list = new ArrayList<Cart>();

	@ModelAttribute("listGioHang")
	public List<Cart> getListGioHang() {

		return list;
	}
	@RequestMapping("/GioHang")
	public String giohang(Model model,@RequestParam("id") String id, @RequestParam("name") String name, @RequestParam("gia") float gia,
			@RequestParam("image") String image) {
		
		boolean isExist = false;
		for (Cart item : list) {
			if (item.getIdSanPham().equals(id)) {
				item.setSoLuong(item.getSoLuong()+1);
				isExist = true;
				
				break;
			}
		}
	
		if (!isExist) {
			Cart ghi = new Cart();
			ghi.setIdSanPham(id);
			ghi.setTenSanPham(name);
			ghi.setGiaSanPham(gia);
			ghi.setSoLuong(1);
			ghi.setImage(image);
			
			list.add(ghi);
		}	
		model.addAttribute("tongTien", this.tinhTongtien(list));


		return "GioHang";
	}
	boolean count= false;
	@RequestMapping("deletegh")
	public String deleteGh(@RequestParam ("idSanPham") String idSanPham, Model model) {
		int index=0;
		for(int i=0;i<list.size();i++) {
			if(list.get(i).getIdSanPham().equals(idSanPham)) {
				index=i;
				count=true;
			}
			
		}
		list.remove(index);
		model.addAttribute("tongTien", this.tinhTongtien(list));
		return "GioHang";
	}
	
	public float tinhTongtien (List<Cart> list) {
		float tongTien=0;
		for(Cart item1: list) {
			tongTien=tongTien+item1.getGiaSanPham()*item1.getSoLuong();
			
		}
		return tongTien;
	}
	@RequestMapping("dangxuat")
	public String dangxuat() {
		list.clear();
		return "redirect:/home.htm";
		
	}
}
