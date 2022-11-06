package com.miniproject.quiz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Quiz {

	public int correctCount=0;
	public int wrongCount=0;
	
     public void question() {
    	 Scanner sc=new Scanner(System.in);
    	 Connection con=ConnectionClass.getConnection();
    	 System.out.println("Enter Your Name To Start Quiz ");
    	 String name=sc.next();
    	 System.out.println();
    	 
    	 try {
			PreparedStatement prep=con.prepareStatement("select * from QuestionTable1");
			ResultSet set=prep.executeQuery();
			System.out.println("===================Welcome "+name+" To Java Quiz==================");
			System.out.println();
			
			while(set.next()) {
				System.out.print(set.getInt(1));
				System.out.print(") "+set.getString(2));
                System.out.println();
				System.out.println(set.getString(3));
				System.out.println(set.getString(4));
				System.out.println(set.getString(5));
				System.out.println(set.getString(6));
				System.out.println();
				System.out.println("Enter your Answer");
				String answer=sc.next();
				
				if(set.getString(7).equals(answer)) {
					System.out.println("Correct");
					System.out.println();
					correctCount++;
				}else {
					System.out.println("Wrong");
					System.out.println();
					wrongCount++;
				}
			}
			
			PreparedStatement prep1=con.prepareStatement("insert into student2(stud_name,marks)values(?,?)");
			prep1.setString(1, name);
			prep1.setInt(2, correctCount);
			prep1.executeUpdate();
			
			PreparedStatement prep2=con.prepareStatement("select stud_id,stud_name from student2");
			ResultSet set1=prep2.executeQuery();
			
			while(set1.last()) {
				
			System.out.println("++++++++++++++++++++++++++++++++++++++");
			System.out.println("Hello "+set1.getString(2)+" Your Id is "+set1.getInt(1));
			break;
			}
			System.out.println("Your Score is : "+correctCount+"/10");
			System.out.println("Wrong Answerd : "+wrongCount);
			
			if(correctCount >=8) {
				System.out.println("Your Grade is : A");
			}else if(correctCount >=6 && correctCount <8) {
				System.out.println("Your Grade is : B");
			}else if(correctCount ==5 ) {
				System.out.println("Your Grade is : C");
			}else if(correctCount <5 ) {
				System.out.println("Unfortunatly You Are Failed ");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	 sc.close();
     }
	
}
