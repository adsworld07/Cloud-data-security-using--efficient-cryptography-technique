
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
<title>Secure Data Sharing in Cloud Computing</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>

                <%
           if (request.getParameter("msg") != null) {
        %>
        <script>alert('Verification Successfully');</script>
        <%
            }
        %>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1>Cloud Data Security using Efficient Cryptosystem Technique</h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="uhome.jsp"><span>User Home</span></a></li>
          <li><a href="file_req.jsp"><span>Send Request</span></a></li>
          <li><a href="down.jsp"><span>File Download </span></a></li>
          <li><a href="index.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="335" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="335" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="335" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
            <br><h2>Send Request for File Access</h2><br>
         <div class="clr"></div>
         <!---Start Body --->
         <table border="1" style="text-align: center;margin-left: 0px">
                            <tr>
                                <th style="text-align: center;width: 30px; font-size: 16px; color: #0096da ">ID</th>
                                <th style="text-align: center;width: 300px; font-size: 16px; color: #0096da">File Name</th>
                                <th style="text-align: center;width: 100px; font-size: 16px; color: #0096da">Provider</th>
                                <th style="text-align: center;width: 200px; font-size: 16px; color: #0096da">Date</th>
                                <th style="text-align: center;width: 100px; font-size: 16px; color: #0096da">Send Request</th>
                            </tr>
                            <tr>
                                <%
                                
                                String  skey=(String)session.getAttribute("ssskey");
                                System.out.println("Provider Name"+skey);
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    try {
                                        con = DbConnection.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from upload where secret_key='"+skey+"'");
                                        while(rs.next())
                                            
                                        {%>
                                        <td style=" font-size: 14px; color: #666464"><%=rs.getString("id")%></td>     
                                        <td style=" font-size: 14px; color: #666464"><%=rs.getString("filename")%></td>     
                                        <td style=" font-size: 14px; color: #666464"><%=rs.getString("provider_name")%></td>
                                        <td style=" font-size: 14px; color: #666464"><%=rs.getString("time")%></td>
<td> <a href="Download?<%=rs.getString("id")%>"><font style="color: green; font-size: 16px">Download</a></font> </td>
                                        <tr />
                                        <%
                                      
                                        
                                        } 
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
                        </table>
         <!---End Body --->
      <br><br><br><br></div>
     </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
              
            <li><a href="down.jsp">Back</a></li>
          </ul>
        </div>
        
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="footer">
    <div class="footer_resize">
           <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
