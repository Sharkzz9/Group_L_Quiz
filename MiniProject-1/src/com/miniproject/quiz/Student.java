package com.miniproject.quiz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Student {
   public void retriveScore() {
	Connection con=ConnectionClass.getConnection();
	
	   try {
		PreparedStatement per=con.prepareStatement("select * from student2 order by(marks) desc;");
		ResultSet set=per.executeQuery();
		System.out.println("\t"+"ID"+"\t\t"+"Name"+"\t\t"+"Marks");
		System.out.println();
		while(set.next()) {
		System.out.print("\t"+set.getInt(1)+"\t\t"+set.getString(2)+"\t\t"+set.getInt(3));
		//System.out.print("\t"+set.getString(2));
		//System.out.print("\t\t\t"+set.getInt(3));
		System.out.println();
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   }
   
   public void toGetYourScore(int id) {
	   Connection con=ConnectionClass.getConnection();
		
	   try {
		PreparedStatement per=con.prepareStatement("select marks ,stud_name from student2 where stud_id=?;");
		per.setInt(1, id);
	
		ResultSet set=per.executeQuery()  ;
		
		  while(set.next()) {
		  //System.out.print("\t"+set.getInt(1));
		 // System.out.print("\t"+set.getString(2));
		  System.out.print("Hi!! "+set.getString(2)+" Your Marks is: "+set.getInt(1));
		 
		System.out.println();
	}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   
   }
}
