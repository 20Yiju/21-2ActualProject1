package example.com.week2;

import java.util.ArrayList;
import java.util.List;

public class Student implements Comparable<Student> {
	
	private int no;
	private String name;
	private int age;
	@Override
	public int compareTo(Student o) {
		// TODO Auto-generated method stub
		return name.compareTo(o.name);
	}
	
	
	
	
	

}
