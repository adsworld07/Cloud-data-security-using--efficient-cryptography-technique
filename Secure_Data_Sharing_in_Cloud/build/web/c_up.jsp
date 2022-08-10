<%-- 
    Document   : c_up
    Created on : Jul 13, 2016, 6:28:01 PM
    Author     : java4
--%>


<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dbcon.DbConnection"%>
<%
    String j = request.getQueryString();
                Connection con = DbConnection.getConnection();
                Statement st =con.createStatement();
 int id=Integer.parseInt(request.getQueryString());
   
  Random RANDOM = new SecureRandom();
                     int PASSWORD_LENGTH = 10;
                     String letters = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";
                     String skey = "";
                    
                     for (int i=0; i<PASSWORD_LENGTH; i++)
                 {
                int index = (int)(RANDOM.nextDouble()*letters.length());
                skey += letters.substring(index, index+1);
                 }
 
 
     System.out.println("File id"+id);
    int i = st.executeUpdate("update upload set secret_key = '"+skey+"' where id = '" + id + "'");
    if (i != 0) {
        response.sendRedirect("file_update.jsp?Msgac=revocation");
    } else {
        response.sendRedirect("file_update.jsp? msg=Error");
    }
%>