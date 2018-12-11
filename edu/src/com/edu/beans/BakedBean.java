package com.edu.beans;

public class BakedBean {
	private String level = "raw";
	private String goesWith = "sashimi";

	public String getLevel() {
		return level;
	}

	public void setLevel(String newlevel) {
		level = newlevel;
	}

	public String getGoesWith() {
		return goesWith;
	}

	public void setGoesWith(String dish) {
		goesWith = dish;
	}
}
