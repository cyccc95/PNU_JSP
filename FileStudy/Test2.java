package edu;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class Test2 {

	public void writeObject(String fname) throws Exception {
		FileOutputStream fos = new FileOutputStream(fname);		// 기본 스트림
		ObjectOutputStream oos = new ObjectOutputStream(fos);	// 보조 스트림
		
		for (int i = 10; i <= 20; i++) {
			Member m = new Member("홍길동" + i,i);
			oos.writeObject(m);
		}
		
		oos.close();
		fos.close();
	}
	
	public void printObject(String fname) throws Exception {
		FileInputStream fis = new FileInputStream(fname);		// 기본 스트림
		ObjectInputStream ois = new ObjectInputStream(fis);	// 보조 스트림
		
		for(int i = 10; i <=20; i++){
			Member m = (Member)ois.readObject();
			System.out.println("print : " + m);
		}
		
		ois.close();
		fis.close();
		
	}
	
	public static void main(String[] args) throws Exception {
		Test2 tt = new Test2();
		
//		tt.writeObject("testobj.dat");
		tt.printObject("testobj.dat");
		
	}

}
