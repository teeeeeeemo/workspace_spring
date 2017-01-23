package com.springbook.ioc.injection;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.web.servlet.mvc.Controller;

public class CollectionBean {
	
/*	//List type mapping 
 * 
 	private List<String> addressList;
	
	public void setAddressList(List<String> addressList) {
		this.addressList = addressList;
	}
	
	public List<String> getAddressList() {
		return addressList;
	}
*/
	
	/*//Set type mapping
	private Set<String> addressList;
	
	public void setAddressList(Set<String> addressList) {
		this.addressList = addressList;
	}
	
	public Set<String> getAddressList(){
		return addressList;
	}*/
	
	//Map type mapping
	private Map<String, Controller> addressList;
	
	public void setAddressList(Map<String, Controller> addressList) {
		this.addressList = addressList;
	}
	
	public Map<String, Controller> getAddressList() {
		return addressList;
	}
}
