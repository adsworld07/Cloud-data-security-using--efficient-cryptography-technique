<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>

<%@ page import="Dbcon.DbConnection"%>





  
       <% 
        try
                {
				
//           int a1 =(Integer)(session.getAttribute( "id" ));
                  String  User_Name=(String)session.getAttribute("ssname");
                   String  Email=(String)session.getAttribute("ssemail");
                    String  State=(String)session.getAttribute("ssstate");
                     String  Country=(String)session.getAttribute("sscountry");
                     
                  String title = request.getParameter("filename");
                    String skey = request.getParameter("secret_key");
                    String pname = request.getParameter("pname");
                      
                   String  Status="No";  
       System.out.println("Request is activated"+Email+State+Country+title+skey+pname+Status);
	  	  
	 
       Connection con= DbConnection.getConnection();
        Statement st=con.createStatement();
		
        
            String sql="insert into request(name, email, state, country, title, secret_key, pname, status) values ('"+User_Name+"','"+Email+"','"+State+"','"+Country+"','"+title+"','"+skey+"','"+pname+"','"+Status+"')";
		
        int x=st.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("file_req.jsp?msg=Request_send_Successfully");
	
		}
				else{
		response.sendRedirect("file_req.jsp?msgg=faild");
		
		}
        con.close();
        st.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>   