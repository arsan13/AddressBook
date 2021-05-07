package model;

public class User {
	protected int id;
	protected String name;
	protected String email;
	protected String phone;
	protected String country;
	protected String aid;
	
	public User() {
	}
	
	public User(String name, String email, String phone, String country, String aid) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.country = country;
		this.aid = aid;
	}

	public User(int id, String name, String email, String phone, String country, String aid) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.country = country;
		this.aid = aid;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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

	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}
}
