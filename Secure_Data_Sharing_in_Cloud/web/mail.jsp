<%@page import="algorithm.Mail"%>
<%@ page import ="java.sql.*" %>
<%
{
   String url = "jdbc:mysql://localhost:3306/data_sharing";
        String user = "root";
        String password = "root";
        int id=Integer.parseInt(request.getQueryString());
        System.out.println("id get successfully"+id);
            Connection conn = DriverManager.getConnection(url, user, password);
           
            
            String sql = "Select *  from request where id = '" + id + "' ";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            if(result.next()) {
       
             String name =result.getString("name");
            String email =result.getString("email");
            session.setAttribute( "Email", email );
            String msg =result.getString("secret_key");
             session.setAttribute( "Key", msg );  

            Mail m = new Mail();
            m.secretMail(msg, name, email);
           
           response.sendRedirect("activate.jsp");
     }else{
           response.sendRedirect("user_req.jsp");
     }
     }
%>


