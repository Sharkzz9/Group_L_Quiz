package com.miniproject.quiz;

import java.util.Scanner;

public class MainClass {

	public static void main(String[] args) {
		Student stud=new Student();
		Quiz q=new Quiz();
		System.out.println("+++++++++++++++++++++++++++++++++++++++++");
		System.out.println("+     Welcome To Java Application       +");
		System.out.println("+++++++++++++++++++++++++++++++++++++++++");
		System.out.println();
		System.out.println("+++++++++++ Enter your Choice ++++++++++++");
		System.out.println();
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter 1) To Start the Java Quiz");
		System.out.println("Enter 2) To Retrive Student Information");
	    System.out.println("Enter 3) To Retrive your Score");
	    System.out.println();
		int ch=sc.nextInt();
		
		switch(ch) {
		case 1:
			q.question();
			break;
		case 2:
			stud.retriveScore();
			break;
		case 3:
			System.out.println("Enter your id");
			int id=sc.nextInt();
			stud.toGetYourScore(id);
		}
      sc.close();
	}

}
