package org.common.model;

public enum YesNo {
	YES("Yes"),
	NO("No"),
	ALL("All");
	
	private String name;
	
	private YesNo(String name){
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String allowedNotAllowed(){
		
		if(getName() == null) return "Not specified";
		if(getName().equalsIgnoreCase("Yes")) return "Allowed";
		if(getName().equalsIgnoreCase("No")) return "Not Allowed";
		
		return "Not specified";
	}

}