package ptithcm.bean;

public class Cart {
	private String idSanPham;
	private String tenSanPham;
	private float giaSanPham;
	private int soLuong;
	private String image;
	
	

	public String getIdSanPham() {
		return idSanPham;
	}
	public void setIdSanPham(String idSanPham) {
		this.idSanPham = idSanPham;
	}
	public String getTenSanPham() {
		return tenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	public float getGiaSanPham() {
		return giaSanPham;
	}
	public void setGiaSanPham(float giaSanPham) {
		this.giaSanPham = giaSanPham;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Cart(String idSanPham, String tenSanPham, float giaSanPham, int soLuong, String image) {
		super();
		this.idSanPham = idSanPham;
		this.tenSanPham = tenSanPham;
		this.giaSanPham = giaSanPham;
		this.soLuong = soLuong;
		this.image = image;
	}
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
}
