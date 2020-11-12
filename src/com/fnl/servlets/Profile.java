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
import com.fnl.beans.*;

import com.google.gson.*;


@WebServlet("/Profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Titaniumchest titaniumchest = new Titaniumchest();
		request.setAttribute("sessions", titaniumchest.recupererSessions());
		
		Seance seance = new Seance();
		seance.setSets(4);
		request.setAttribute("seance", seance);
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
		
		// TODO Auto-generated method stub
		
	}

}