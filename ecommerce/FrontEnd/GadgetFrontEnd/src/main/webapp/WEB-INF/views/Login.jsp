<%@ include file="/WEB-INF/views/Header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

	
<form action="perform_login" method="post">  
<table  border="1" align="center">
 
  <tr >
    <td colspan="2"> <center>Sign in </center> </td>
  </tr>
  
  <tr >
    <td> Login Name </td>
    <td> <input type="text" name="username" required/> </td>
  </tr>
   
  <tr >
    <td> Password </td>
    <td> <input type="password" name="password" required/></td>
  </tr>
  
  <tr>
    <td colspan="2"> <center><input type="submit" value="login"/></center> </td>
  </tr>
  
     
</table>
<br/>
<br>

  <center><b><i><font size="6" color="red">${errmsg}</font></i></b></center> 	


</form>

</body>
</html>