<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <h2> Customer List  </h2>
  <table>
  <thead>
  		<tr> 
  					  <th >First Name</th>
                      <th >Last Name </th>
                      <th >Email</th>
                      <th>Free Passed</th>
                      <th>Department Code</th>
                      <th>Postal Code</th>
        </tr>
        <tr>
         </thead>
                     <c:forEach var="tempCustomer" items="${customers}">     
                      <tbody>
	                      <tr>
		                    <td class="success"> ${tempCustomer.firstName} </td>
							<td class="success"> ${tempCustomer.lastName} </td>
							<td class="success"> ${tempCustomer.email} </td>
							<td class="success"> ${tempCustomer.freePasses} </td>
							<td class="success"> ${tempCustomer.departmentCode} </td>	
																			
							<td class="success"> ${tempCustomer.postalCode} </td>
							</tr>
							</tbody>
							</c:forEach>         
  </table>
</body>
</html>