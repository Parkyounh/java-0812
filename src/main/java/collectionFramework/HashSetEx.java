package collectionFramework;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Vector;

public class HashSetEx {
	public static void main(String[] args) {
		Set<String> list =new HashSet<String>();

		
		list.add("Java");
		list.add("JDBC");
		list.add("Servlet/JSP");
//		list.add(2,"Database");  //인덱스 사용 불가
		list.add("iBATIS");
		list.add("Java");  //중복 허용 x
		
		int size = list.size();
		System.out.println("사이즈: "+size);
		System.out.println();
		
	    Iterator<String> it= list.iterator();
	    while(it.hasNext()) {
	    	System.out.println(it.next());
	    }
	    
	    for(String str : list) { //위와 같은 반복문, 향상된 for문 사용
	    	System.out.println(str);
	    }
		
	}
}
