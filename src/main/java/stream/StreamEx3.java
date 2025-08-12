package stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StreamEx3 {

	public static void main(String[] args) {
//		List<String> list1 = new ArrayList<String>();
//		list1.add("홍길동");
		List<Integer> numbers = Arrays.asList(1,2,3,4,5); //new 대신 사용 
		List<Integer> filtered = numbers.stream().filter(n -> n%2 ==0).collect(Collectors.toList());
		
		filtered.stream().forEach(n->System.out.println(n));
	}

}
