<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.fnl.beans.Seance" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Fitntial</title>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.pkgd.js"> </script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
	
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="mystyle.css">
    <link rel="stylesheet" href="assets/css/tiny-slider.css">
    <script src="assets/js/tiny-slider.js"></script>
  </head>
  <body>
  	<%@ include file="homebar.jsp" %>

    <!-- Profile picture -->

    <div class="profilepic">

      
	<br>
	
		
  	  <img src="pictures/jahir-martinez-YFJn6-GZVuw-unsplash.jpg" class="rounded-circle" alt="" width="100" height="100">
      <p>Lucie</p>
      <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-gem" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" d="M3.1.7a.5.5 0 0 1 .4-.2h9a.5.5 0 0 1 .4.2l2.976 3.974c.149.185.156.45.01.644L8.4 15.3a.5.5 0 0 1-.8 0L.1 5.3a.5.5 0 0 1 0-.6l3-4zm11.386 3.785l-1.806-2.41-.776 2.413 2.582-.003zm-3.633.004l.961-2.989H4.186l.963 2.995 5.704-.006zM5.47 5.495l5.062-.005L8 13.366 5.47 5.495zm-1.371-.999l-.78-2.422-1.818 2.425 2.598-.003zM1.499 5.5l2.92-.003 2.193 6.82L1.5 5.5zm7.889 6.817l2.194-6.828 2.929-.003-5.123 6.831z"/>
      </svg>

    </div>

    <!-- Body composition -->
    <div class="bodycompo">
      <canvas id="chart1"></canvas>


    <script>
      Chart.defaults.global.title.display = true;
      Chart.defaults.global.title.text = "Body composition";
      Chart.defaults.global.legend.display = false;
    </script>


        <script>
          var ctx = document.getElementById('chart1').getContext('2d');
          var chart1 = new Chart(ctx, {
              type: 'doughnut',
              data: {
                  labels: ['fat', 'water ', 'muscle ', 'bone '],
                  datasets: [{
                      label: 'Body fat',
                      data: [20, 50, 15, 15, ],
                      backgroundColor: [
                          '#FFD700',
                          '#1E90FF',
                          '#ff8c00',
                          '#FFEBCD'
                      ],
                      borderColor: [

                      ],
                      borderWidth: 1
                  }]
              },
              options: {
                  scales: {

            }
        }
    });
    </script>
    </div>

    <!-- Weight -->
    <div class="bodyfat">
      <canvas id="chart2"></canvas>


    <script>
      Chart.defaults.global.title.display = true;
      Chart.defaults.global.title.text = "Body fat";
      Chart.defaults.global.legend.display = false;
    </script>


        <script>
          var ctx = document.getElementById('chart2').getContext('2d');
          var chart2 = new Chart(ctx, {
              type: 'line',
              data: {
                  labels: ['1 Sept', '2 Sept', '3 Sept', '4 Sept', '5 Sept', '6 Sept'],
                  datasets: [{
                      label: 'Body fat',
                      data: [15, 15, 14, 15, 14, 13],
                      backgroundColor: [
                          '#FFD700',

                      ],
                      borderColor: [
                          '#ff1493'
                      ],
                      borderWidth: 1
                  }]
              },

    });
    </script>
    </div>


    <!-- Weight -->
    <div class="weigth">
      <canvas id="chart3"></canvas>
    </div>

    <script>
      Chart.defaults.global.title.display = true;
      Chart.defaults.global.title.text = "Weight";
      Chart.defaults.global.legend.display = false;
    </script>


        <script>
          var sqldata =  
              <c:forEach var="session" items="${sessions}" >
		    	${session.sets }
		  	  </c:forEach>

	          var ctx = document.getElementById('chart3').getContext('2d');
          var chart3 = new Chart(ctx, {
              type: 'line',
              data: {
                  labels: ['1 Sept', '2 Sept', '3 Sept', '4 Sept', '5 Sept', '6 Sept'],
                  datasets: [{
                      label: 'Muscle mass',
                      data: [sqldata, 54.5, 54, 54.2, 53.7, 53.5],
                      backgroundColor: [
                          '#ff8c00',

                      ],
                      borderColor: [
                          '#ff1493'
                      ],
                      borderWidth: 1
                  }]
              },

    });
    </script>
    
  
	
	    <c:forEach var="session" items="${sessions}" >
		    
			  	${session.sets }
			  	<p>${session.reps }</p>
			  	<p>${session.weight }</p>
			  	<p>${session.rpe }</p>
		  
	  	</c:forEach>
	
  	<br>
    
  
  
	
	<br>
	<br>
	<br>


  </body>
</html>
