package kpu.web.club.domain;

public class BoardVO {
	private String bid;
	private String restaurantname;
	private String foodname;
	private String title;
	private String content;
	private String tastesatisfy;
	private String pricesatisfy;
	private String cleansatisfy;
	public String getBid() {
		return bid;
	}
	public void setBId(String bid) {
		this.bid = bid;
	}
	public String getRestaurantname() {
		return restaurantname;
	}
	public void setRestaurantname(String restaurantname) {
		this.restaurantname = restaurantname;
	}
	public String getFoodname() {
		return foodname;
	}
	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTastesatisfy() {
		return tastesatisfy;
	}
	public void setTastesatisfy(String tastesatisfy) {
		this.tastesatisfy = tastesatisfy;
	}
	public String getPricesatisfy() {
		return pricesatisfy;
	}
	public void setPricesatisfy(String pricesatisfy) {
		this.pricesatisfy = pricesatisfy;
	}
	public String getCleansatisfy() {
		return cleansatisfy;
	}
	public void setCleansatisfy(String cleansatisfy) {
		this.cleansatisfy = cleansatisfy;
	}
}
