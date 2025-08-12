package stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Stream;

public class StreamEx1 {

	public static void main(String[] args) {
//		List<String> list1 = new ArrayList<String>();
//		list1.add("홍길동");
		List<String> list = Arrays.asList("홍길동","김하나","김자바"); //new 대신 사용 

		for(String str:list) {
			System.out.println(str);
		}
		
//		Stream<String> stream = list.stream();
		list.stream().forEach(n -> System.out.println(n)); //위 for문과 같이 출력
	}

}
