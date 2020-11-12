package com.fnl.beans;

import com.google.gson.*;

public class Jeyson {
	
	public static void main(String args[]) {
		
		Seance s1 = new Seance();
		
		s1.setReps(15);
		s1.setWeight(120);
		
		Gson json = new Gson();
		
		String response = json.toJson(s1);
		
		System.out.println(response);

	}
	
	
}
