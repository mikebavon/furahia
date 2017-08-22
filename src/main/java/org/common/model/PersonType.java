package org.common.model;

/**
 * Created by fastlane on 8/4/16.
 */
public enum PersonType {

    INDIVIDUAL("Individual"),
    ORGANIZATION("Organization");

    private String name;

    private PersonType(String name){
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
