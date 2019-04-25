<%@ include file="/WEB-INF/views/Header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

	
<form action="registerUser" method="post">  
<table  border="1" align="center">
 
  <tr >
    <td colspan="2"> <center>Sign Up </center> </td>
  </tr>
  
  <tr >
    <td> Customer Name </td>
    <td> <input type="text" name="customername" required/> </td>
  </tr>
   
   <tr >
    <td> User Name </td>
    <td> <input type="text" name="username" required/> </td>
  </tr>
  
  <tr >
    <td> Password </td>
    <td> <input type="password" name="password" required/></td>
  </tr>
  
  <tr>
	<td>Customer Address</td>
	<td><input type="text" name="address"  required/></td>
  </tr>
  
  <tr>
    <td colspan="2"> <center><input type="submit" value="SignUp"/></center> </td>
  </tr>
  
     
</table>

</form>

</body>
</html>

