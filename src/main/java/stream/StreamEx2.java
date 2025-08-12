package stream;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Stream;

class Student{
	private String name;
	private int score;
	
	public Student(String name, int score) {
		this.name = name;
		this.score = score;
	}

	@Override
	public String toString() {
		return "Student [name=" + name + ", score=" + score + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
	
}

public class StreamEx2 {

	public static void main(String[] args) {
		List<Student> list = Arrays.asList(new Student("홍길동",90),new Student("김하나",70),new Student("김자바",80)); //new 대신 사용 

		for(Student stu:list) {
			System.out.println(stu);  // 해쉬값 stream.Student@5caf905d toString 오버라이딩 필요
		}
		
//		Stream<String> stream = list.stream();
		list.stream().forEach(n -> System.out.println(n)); //위 for문과 같이 출력
		
		double avg = list.stream().mapToInt(Student :: getScore).average().getAsDouble();
		System.out.println(avg);
	}

}
