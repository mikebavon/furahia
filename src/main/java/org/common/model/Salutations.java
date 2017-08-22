package org.common.model;

public enum Salutations {

	MR("Mr"),
	MRS("Mrs"),
	MS("Ms"),
	DR("Dr"),
	PROF("Prof"),
	FATHER("Father"),
	REV("Reverend");
	
	private String name;
	
	private Salutations(String name){
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
		return this.name;
	}
}