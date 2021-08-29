package jspbook.ch07;

import java.util.ArrayList;

public class AddrManager {

	// AddrBeanŸ���� ArrayList ��ü ����(addlist)
	ArrayList<AddrBean> addlist = new ArrayList<AddrBean>();

	// Arraylist(addlist)�� AddrBean�� ��ü �߰�
	public void add(AddrBean ab) {
		addlist.add(ab);
	}

	// ������ ���(addlist) ���� �޼ҵ�
	public ArrayList<AddrBean> getAddList() {
		return addlist;
	}

	// Ư�� ������� ������ �˻��ϴ� �޼���
	public AddrBean getAddr(String username) {
		for (AddrBean ab : addlist) {
			if (ab.getUsername().equals(username)) {
				return ab;
			}
		}return null;
	}
}
