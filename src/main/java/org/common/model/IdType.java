package org.common.model;

public enum IdType {

	NATIONAL_ID("National ID"),
	PASSPORT_NO("Passport No");
	
	private String name;
	
	private IdType(String name){
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString(){
		return name;
	}

}