<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fitntial</title>

<!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.pkgd.js"> </script>

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="mystyle.css">
    <link rel="stylesheet" href="assets/css/tiny-slider.css">
    <script src="assets/js/tiny-slider.js"></script>


</head>
<body>
	<%@ include file="homebar.jsp" %>

	<p>hello</p>
	<p>hello</p>
	<p>hello</p>

	<form method="post" action="homefeed"> 
		<label for="nom">Nom : </label>
		<input type="text" id="nom" name="nom">
		<input type="submit" value="envoies">
	</form>

	

  <form method="post" action="homefeed">
	<div class="sessiontracker">

    <!-- set -->

      <div class="form-group" >
        <label for="exampleFormControlSelect1" >Set</label>
        <select multiple class="form-control" id="exampleFormControlSelect1" size="1" name="exampleFormControlSelect1">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
      </div>

      <!-- nombre de reps -->

      <div class="form-group" >
        <label for="exampleFormControlSelect2" >Reps</label>
        <select multiple class="form-control" id="exampleFormControlSelect2" size="1" name="exampleFormControlSelect2">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
          <option>6</option>
          <option>7</option>
          <option>8</option>
          <option>9</option>
          <option>10</option>
          <option>11</option>
          <option>12</option>
          <option>13</option>
          <option>14</option>
          <option>15</option>
          <option>16</option>
          <option>17</option>
          <option>18</option>
          <option>19</option>
          <option>20</option>
        </select>
      </div>

    <!-- weight -->

      <div class="form-group" >
        <label for="exampleFormControlSelect3" >Weight</label>
        <select multiple class="form-control" id="exampleFormControlSelect3" size="1" name="exampleFormControlSelect3">
          <option>10</option>
          <option>20</option>
          <option>30</option>
          <option>4</option>
          <option>5</option>
        </select>
      </div>

    <!-- difficulty level -->

      <div class="form-group" >
        <label for="exampleFormControlSelect4" >RPE</label>
        <select multiple class="form-control" id="exampleFormControlSelect4" size="1" name="exampleFormControlSelect4">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
          <option>6</option>
          <option>7</option>
          <option>8</option>
          <option>9</option>
          <option><10</option>
        </select>
      </div>

    <!-- validation -->

    <div class="form-group" >
        <label for="" ></label>
      	<input type="submit" type="button" class="btn btn-success" value="v" >
    </div>

   </div>

  </form>
  
  <!-- next session titaniumchest -->
  
  <script>
 	var weight = 
 	 	<c:forEach var="session" items="${sessions}" >		  	
	       <c:out value="${session.avgweight }"/>
		</c:forEach> ;
  </script> 
 
    
    <div class="progcontent">
      <table>
        <tr>
          <td>Pec Dec</td>
          <td>3 x 10 </td>
          <td><script>document.write(weight)</script> 
			  kg
		  </td>
        </tr>
        <tr>
          <td>Machine flies </td>
          <td>3 x 10</td>
          <td>60</td>

        </tr>
        <tr>
          <td>Incline dumbell press</td>
          <td>3 x 10</td>
          <td>22.5kg</td>
        </tr>
        <tr>
          <td>Low cable front raise</td>
          <td>3 x 10</td>
          <td>15 kg</td>
        </tr>

      </table>
    </div>
    
    
  <c:if test="${!empty exampleFormControlSelect1 }">
	    <p><c:out value="la valeur rentree est ${exampleFormControlSelect1}"/></p>
  </c:if>
  
  
  
	 <c:forEach var="session" items="${sessions}" >		  	
	       <c:out value="${session.avgweight }"/>
		</c:forEach> 
		
    
	<script>
		if (weight > "85"){
			document.write(weight);
		} else {
			document.write("sorry");
		} 
	</script>
	
	<script>
		if (weight > "210"){
			document.getElementsByClassName("fas fa-circle").style.display = "block";
		} else {
			document.write("sorry");
		} 
	</script>
		
  <!-- Prog content -->

    <div class="progphases">
      <ul class="nav justify-content-center">
        <li class="nav-item">
          <a class="nav-link active"  href="" >
            Warm-up
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link active"  href="titanium.html" >
            Workout
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active"  href="" >
            Cool down
          </a>
        </li>
      </ul>
    </div>

    <div class="progcontent">
      <table>
        <tr>
          <td>Bench press</td>
          <td>5 x 8 </td>
          <td>
              <span class="fa-stack fa-1x">
                <i  class="fas fa-circle fa-stack-1x" ></i>
                <i  class="far fa-circle fa-stack-1x" ></i>
              </span>
              <span class="fa-stack fa-1x">
                <i  class="fas fa-circle fa-stack-1x" ></i>
                <i  class="far fa-circle fa-stack-1x" ></i>
              </span>
              <span class="fa-stack fa-1x">
                <i  class="fas fa-circle fa-stack-1x" ></i>
                <i  class="far fa-circle fa-stack-1x" ></i>
              </span>
              <span class="fa-stack fa-1x">
                <i  class="fas fa-circle fa-stack-1x" ></i>
                <i  class="far fa-circle fa-stack-1x" ></i>
              </span>
          </td>
          <td>50kg</td>
        </tr>
       </table>
    </div>

  	
  
  
</body>
</html>
