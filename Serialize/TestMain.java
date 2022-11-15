package edu;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import edu.domain.Member;

public class TestMain {

	private static String fileName = "test.dat";

	public static void main(String[] args) {

		Member m = new Member(1, "John Doe", 500);

		System.out.println(m.toString());
		
		try {
			FileOutputStream fos = new FileOutputStream(fileName);
			ObjectOutputStream oos = new ObjectOutputStream(fos);
			oos.writeObject(m);
			
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
			return;
		}
		
		Member mm = null;
		
		try {
			FileInputStream fis = new FileInputStream(fileName);
			ObjectInputStream ois = new ObjectInputStream(fis);
			mm = (Member)ois.readObject();
			fis.close();			
			
			System.out.println(mm.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
