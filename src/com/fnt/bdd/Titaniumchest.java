package com.fnt.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.fnl.beans.Seance;
import com.fnl.beans.*;


public class Titaniumchest {
	private Connection connexion;
	
	
	public List<Nextseance> recupererSessions(){
		List<Nextseance> sessions = new ArrayList<Nextseance>();
		
		Statement statement = null;
		ResultSet resultat = null;
		
		loadDatabase(); //connection a la database
		
		try {
			statement = connexion.createStatement();
			
			//execution de la requete
			resultat = statement.executeQuery("select avg(weight) *2 + 2 from titaniumchest;");
						
			//recuperation des donnees
			while (resultat.next()) {
				double avgweight = resultat.getDouble(1);
				
				
				Nextseance session = new Nextseance();
				session.setAvgweight(avgweight);
				
				sessions.add(session);
			}
		} catch(SQLException e) {
			
		} finally {
			//fermeture de la connexion
		try {
			if (resultat != null)
				resultat.close();
			if (statement != null)
				statement.close();
			if (connexion != null)
				connexion.close();
		} catch (SQLException ignore) {
		}
	}
		
	return sessions;
	
	}
	
	private void loadDatabase() {
		
		//chargement du driver
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}catch (ClassNotFoundException e) {
		}
        try {
        	connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/chest", "root", "Mrgeorge99$");
        } catch (SQLException e) {
        	// TODO Auto-generated catch block
        	e.printStackTrace();
        }
	}
	
	public void ajouterserie(Seance session) {
		loadDatabase();
		
		try{
			PreparedStatement preparedStatement = connexion.prepareStatement("insert into titaniumchest (sets, reps, weight, rpe) values(?,?,?,?);");
			preparedStatement.setInt(1, session.getSets());
			preparedStatement.setInt(2, session.getReps());
			preparedStatement.setInt(3, session.getWeight());
			preparedStatement.setInt(4, session.getRpe());
			
			preparedStatement.executeUpdate();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
        	e.printStackTrace();
		}
	}
}
	
