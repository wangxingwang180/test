package com.jiwei.management.test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Scanner;
import java.util.Set;

public class SetTest {

	/**
	 * @param args
	 * @throws FileNotFoundException 
	 */
	public static void main(String[] args) throws FileNotFoundException {
		Set<String> words=new HashSet<String>();

        //通过输入流代开文献
        //方法1:这个方法不需要抛出异常
//        InputStream inStream=SetTest.class.getResourceAsStream("Alice.txt");
        
        //方法2：这个方法需要抛出异常
        InputStream inStream = new FileInputStream("E:\\Alice.txt");
        Scanner in=new Scanner(inStream);
        while(in.hasNext())
        {
            words.add(in.next());
        }
        
        Iterator<String> iter=words.iterator();
        
        for(int i=0;i<5;i++)
        {
            if(iter.hasNext())
            System.out.println(iter.next());
        }
        
        System.out.println(words.size());

	}

}
