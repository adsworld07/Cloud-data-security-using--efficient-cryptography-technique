
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<head>
<title>Data Provider Home Page</title>
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
        <script>alert('Login Successfully');</script>
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
          <li class="active"><a href="pro_home.jsp"><span>Data Provider Home</span></a></li>
          <li><a href="file_upload.jsp"><span>File Upload </span></a></li>
          <li><a href="file_de.jsp"><span>Uploaded File Details</span></a></li>
          <li><a href="file_update.jsp"><span>File Update</span></a></li>
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
            <br><h2>Data Provider Home</h2><br>
         <div class="clr"></div>
         <!---Start Body --->
         <img src="images/pro.jpg" width="360" height="200" alt="" />
         <!---End Body --->
      <br><br><br><br></div>
     </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="pro_home.jsp">Data Provider Home</a></li>
            <li><a href="file_upload.jsp">File Upload to Cloud</a></li>
            <li><a href="file_de.jsp">Uploaded File Details</a></li>
            <li><a href="file_update.jsp">File Update</a></li>
            <li><a href="index.jsp">Logout</a></li>
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
