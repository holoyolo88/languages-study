package ch7;

import java.util.ArrayList;
import java.util.List;

public class addrManager {
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}
	public List<AddrBean> getAddrList(){
		return addrlist;
	}
}
