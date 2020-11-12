package com.fnl.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fnt.bdd.Titaniumchest;
import com.fnl.beans.Seance;

@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public test() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Titaniumchest titaniumchest = new Titaniumchest();
		request.setAttribute("sessions", titaniumchest.recupererSessions());
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/homefeed.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String serie= request.getParameter("exampleFormControlSelect1");
		int sets = Integer.parseInt(serie);
		
		String repetition= request.getParameter("exampleFormControlSelect2");
		int reps = Integer.parseInt(repetition);
		
		String poids= request.getParameter("exampleFormControlSelect3");
		int weight = Integer.parseInt(poids);
		
		String intensite= request.getParameter("exampleFormControlSelect4");
		int rpe = Integer.parseInt(intensite);
		
		
		
		Seance session = new Seance();
		session.setSets(sets);
		session.setReps(reps);
		session.setWeight(weight);
		session.setRpe(rpe);
		
		Titaniumchest titaniumchest = new Titaniumchest();
		titaniumchest.ajouterserie(session);
		
		request.setAttribute("sessions", titaniumchest.recupererSessions());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/homefeed.jsp").forward(request, response);
		
		// TODO Auto-generated method stub
		
	}

}
