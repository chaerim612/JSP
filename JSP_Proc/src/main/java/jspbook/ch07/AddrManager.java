package jspbook.ch07;

import java.util.ArrayList;

public class AddrManager {

	// AddrBean타입의 ArrayList 객체 생성(addlist)
	ArrayList<AddrBean> addlist = new ArrayList<AddrBean>();

	// Arraylist(addlist)에 AddrBean에 객체 추가
	public void add(AddrBean ab) {
		addlist.add(ab);
	}

	// 고객정보 목록(addlist) 전달 메소드
	public ArrayList<AddrBean> getAddList() {
		return addlist;
	}

	// 특정 사용자의 정보를 검색하는 메서드
	public AddrBean getAddr(String username) {
		for (AddrBean ab : addlist) {
			if (ab.getUsername().equals(username)) {
				return ab;
			}
		}return null;
	}
}
