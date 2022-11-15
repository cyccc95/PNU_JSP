package edu;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class Test1 {

	public void write(String fname) {
		
		FileOutputStream fos = null;
		
		try {
			fos = new FileOutputStream(fname);
			fos.write("abcd".getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println("End");
	}
	
	public void printdata(String fname) throws Exception {
		FileInputStream fis = new FileInputStream(fname);
		
		while (true) {
			int r = fis.read();
			if (r == -1) break;	// 데이터의 끝에 도달하면 -1
			System.out.println("r : " + r + " : " + (char)r);		
		}
		fis.close();
	}
	
	public static void main(String[] args) {
		Test1 tt = new Test1();
//		tt.write("test.dat");
		try {
			tt.printdata("test.dat");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
