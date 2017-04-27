package bookshop.bean;

public class BuyDBBean {
	private static BuyDBBean instance = new BuyDBBean();

	// LogonDBBean객체를 리턴하는 메소드
	public static BuyDBBean getinstance() {
		return instance;
	}

	private BuyDBBean() {

	}
}