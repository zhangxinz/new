package com.smxy.bean;

public class Pictre {
    private Integer id;

    private String time;
    private String lTime;
    private String address;

    private String type;

    
    
    public String getlTime() {
		return lTime;
	}

	public void setlTime(String lTime) {
		this.lTime = lTime;
	}

	public Pictre() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public Pictre(Integer id, String time, String lTime, String address, String type) {
		super();
		this.id = id;
		this.time = time;
		this.lTime = lTime;
		this.address = address;
		this.type = type;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

	
    
}