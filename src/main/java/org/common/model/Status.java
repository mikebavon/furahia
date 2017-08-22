package org.common.model;

public enum Status {
	ACTIVE("Active"),
	INACTIVE("Inactive"),
	SUSPENDED("Suspended"),
	EXPELLED("Expelled"),
	ARCHIVED("Archived"),
	PENDING("Pending"),
	FAILED("Failed"),
	COMPLETED("Completed"),
	CANCELLED("Cancelled"),
	REJECTED("Rejected"),
	RESOLVED("Resolved");
	
	private String name;
	private Status(String name){
		this.name = name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
	@Override
	public String toString(){
		return this.name;
	}

}