package org.common.model;

public enum MaritalStatus {
	MARRIED("Married"),
	DIVORCED("Divorced"),
	SINGLE("Single"),
	SEPARATED("Separated"),
	WIDOWED("Widowed");
	
	private String name;
	
	private MaritalStatus(String name){
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}