
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dbcon.DbConnection"%>
<%
    String j = request.getQueryString();
                Connection con = DbConnection.getConnection();
                Statement st =con.createStatement();

    String  email=(String)session.getAttribute("Email");
     System.out.println("Email id"+email);
    int i = st.executeUpdate("update request set status = 'Yes' where email = '" + email + "'");
    if (i != 0) {
        response.sendRedirect("user_req.jsp?Msgac=Secret_key_sent_to_Your_Email");
    } else {
        response.sendRedirect("user_req.jsp? msg=Error");
    }
%>