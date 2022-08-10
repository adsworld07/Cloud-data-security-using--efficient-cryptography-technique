<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style> 

.inputs {
    background: #f5f5f5;
    font-size: 0.8rem;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    border: none;
    padding: 10px 10px;
    width: 200px;
    margin-bottom: 20px;
    box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
    clear: both;
}

.inputs:focus {
    background: #fff;
    box-shadow: 0 0 0 3px #fff38e, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
    outline: none;
}
.inputss {
    background: #f5f5f5;
    font-size: 0.8rem;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    border: none;
    padding: 10px 10px;
    width: 220px;
    margin-bottom: 20px;
    box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
    clear: both;
}

.inputss:focus {
    background: #fff;
    box-shadow: 0 0 0 3px #fff38e, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
    outline: none;
}
.button {
    background-color: #0096da; /* Green */
    border: none;
    color: white;
    padding: 10px 23px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
</style> 
<title>Registration</title>
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
        <script>alert('Registration Succesfully');</script>
        <%
            }
        %>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1>Cloud Data Security using Efficient Cryptosystem Technique
</h1>
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
          <li><a href="index.jsp"><span>Home Page</span></a></li>
          <li><a href="pro.jsp"><span>Data Provider</span></a></li>
          <li><a href="user.jsp"><span>User</span></a></li>
          <li><a href="auditor.jsp"><span>Auditor</span></a></li>
          <li class="active"><a href="reg.jsp"><span>Registration</span></a></li>
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
          <h2>Registration</h2><br>
          
          <div class="clr"></div>
          <!---star Body -->
          <form action="login.jsp" method="get" > 
    <input type="text"class="inputs" name="name" required="" placeholder="Your Name" />&nbsp;&nbsp;&nbsp; 
    <input type="password"class="inputs" name="pass" required="" placeholder="Password" /><br> 
    <input type="email"class="inputs" name="email" required="" placeholder="e-mail" />&nbsp;&nbsp;&nbsp;
    <input type="date"class="inputs" name="dob" required="" placeholder="Date Of Birth" /><br> 
    <select class="inputss" required="" name="gen" >
            <option value="select">Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
    </select>&nbsp;&nbsp;&nbsp;
    <select class="inputss" required="" name="role" >
            <option value="select">Role</option>
            <option value="Provider">Data Provider</option>
            <option value="User">User</option>
    </select><br> 
    <input type="text"class="inputs" name="state" required="" placeholder="State" />&nbsp;&nbsp;&nbsp;
    <input type="text"class="inputs" name="country" required="" placeholder="Country" /><br>
    <input type="hidden" value="3" name="status" />
    <input type="Submit" value="Register" class="button" >
             </form>
          
          <!---End Body -->
         <br></div>
     </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="pro.jsp">Data Provider</a></li>
            <li><a href="user.jsp">User</a></li>
            <li><a href="auditor.jsp">Auditor</a></li>
            <li><a href="reg.jsp">Registration</a></li>
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

