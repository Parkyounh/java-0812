package stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StreamEx4 {

	public static void main(String[] args) {
		
		List<String> words = Arrays.asList("Java","Lambda","Stream"); //new 대신 사용 
		
		words.stream()
	     .map(String::toUpperCase)
	     .forEach(System.out::println);
		
		words.stream()
	     .map(word -> word.toUpperCase()) // 대문자로 변환
	     .forEach(System.out::println);   // 출력
	}

}
