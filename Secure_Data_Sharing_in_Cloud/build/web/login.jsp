<%-- 
    Document   : loginaction
    Created on : Feb 23, 2016, 3:43:53 PM
    Author     : java4
--%>

<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>

<%
    Connection con = null;
    Statement st = null;
   ResultSet rs = null;

    
      String name = request.getParameter("name");
       String pass = request.getParameter("pass");
        String Eamil = request.getParameter("email");
         String dob = request.getParameter("dob");
          String gen = request.getParameter("gen");
         String role = request.getParameter("role");
        String State = request.getParameter("state");
       String Country = request.getParameter("country");
       String skey = request.getParameter("skey");
      session.setAttribute("ssskey", skey);
    System.out.println("User Details"+dob+gen+role+State+Eamil+name+pass+Country);
  
     int status = Integer.parseInt(request.getParameter("status"));
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                    rs = st.executeQuery("select * from reg where name='" + name + "' AND pass='" + pass + "' AND role='Provider'");
                    if (rs.next()) {
                        session.setAttribute("sssid", rs.getString("id"));
                        session.setAttribute("sssname", rs.getString("name"));
                        session.setAttribute("sssemail", rs.getString("email"));
                        session.setAttribute("sssstate", rs.getString("state"));
                        session.setAttribute("ssscountry", rs.getString("country"));
                        response.sendRedirect("pro_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("pro.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
                     case 2:
                try {
                    rs = st.executeQuery("select * from reg where name='" + name + "' AND pass='" + pass + "' AND role='User'");
                    if (rs.next()) {
                        session.setAttribute("ssid", rs.getString("id"));
                        session.setAttribute("ssname", rs.getString("name"));
                        session.setAttribute("ssemail", rs.getString("email"));
                        session.setAttribute("ssstate", rs.getString("state"));
                        session.setAttribute("sscountry", rs.getString("country"));
                        response.sendRedirect("uhome.jsp?msg=success");
                    } else {
                        response.sendRedirect("user.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
              
                case 3:

              try {
                 con = DbConnection.getConnection();
                 st = con.createStatement();
            int is = st.executeUpdate("insert into reg(name, pass, email, dob, gen, role, state, country) values ('" + name + "','" + pass + "','" + Eamil + "','" + dob + "','" + gen + "','" + role + "','" + State + "','" + Country + "')");                                           
                if (is != 0) {
                response.sendRedirect("reg.jsp?msg=success");
                } else {
                     response.sendRedirect("reg.jsp?msgg=failed");
                 }            
                  } catch (Exception ex) {
                  response.sendRedirect("user_reg.jsp?msggg=failed");
                }
                break;
          
            case 4:
                try {
                    if (name.equalsIgnoreCase("auditor") && pass.equalsIgnoreCase("auditor")) {
                        response.sendRedirect("ahome.jsp?msg=success");
                    } else {
                        response.sendRedirect("auditor.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
                  case 5:
                try {
                    rs = st.executeQuery("select * from upload where secret_key='" + skey + "'");
                    if (rs.next()) {
                    
                        response.sendRedirect("down1.jsp?msg=success");
                    } else {
                        response.sendRedirect("down.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            default:
                response.sendRedirect("index.jsp");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>