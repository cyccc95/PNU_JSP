package edu;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class Test3 {

	public void copyFile(String sourceName, String destName) throws Exception {
		FileInputStream fis = new FileInputStream(sourceName);
		FileOutputStream fos = new FileOutputStream(destName);
			
		while(true) {
			int r = fis.read();
			if (r == -1) break;
			fos.write(r);
		}
		
		fis.close();
		fos.close();
	}
		
	public static void main(String[] args) throws Exception {
		
		Test3 tt = new Test3();
		
		tt.copyFile(args[0], args[1]);
		
		System.out.println("Done");
		
	}

}
