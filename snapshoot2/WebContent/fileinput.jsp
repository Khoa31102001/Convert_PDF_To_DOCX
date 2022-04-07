<%@page import="model.bean.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Trang Chủ</title>
<script src="https://kit.fontawesome.com/1939b78ca2.js"
	crossorigin="anonymous"></script>
  <script>
        function fileValidation() {
            var fileInput = 
                document.getElementById('file');
              
            var filePath = fileInput.value;
          
            // Allowing file type
            var allowedExtensions = 
                    /(\.pdf)$/i;
              
            if (!allowedExtensions.exec(filePath)) {
                alert('Invalid file type');
                fileInput.value = '';
                return false;
            } 
        }
    </script>
</head>
<body>
	<% Account account = (Account)request.getSession().getAttribute("account");
		if (account !=null ) 
		{
		%>
	<header>
		<div class="navbar">
			<a href="">Home</a> <a href="">Document</a> <a
				href="<%=request.getContextPath()%>/CheckLogoutServlet"
				class="logout">Logout </a> <a
				href="<%=request.getContextPath()%>/OptionalServlet?index=2"
				class="welcome">Welcome <%=account.getUsername() %></a>
		</div>
	</header>
	<main>
		<div class="jumbotron">
			<div class="content-page">
				<h1 class="display-3">
					Chuyển PDF sang WORD ! <i class="far fa-file-pdf"></i>
				</h1>
			</div>
		</div>
		<div class="container">
			<h1>✨ Convert here ✨</h1>
			<form class="form"
				action="<%=request.getContextPath()%>/UploadFileServlet"
				method="POST" enctype="multipart/form-data">
				<div class="file-input">
					<label for="fileUpload">Upload file <i
						class="fas fa-arrow-alt-circle-right"></i></label> 
					<input class="input" type="file" id="file" onchange="return fileValidation()" name="file">
				</div>
				<br />
				 <input type="submit" value="Convert" /> <input type="reset" />
			</form>
		</div>
	</main>
	<footer class="footer-wrap">
		<div class="footer-content">
			<div class="item">
				<h2 class="title">TAGS</h2>
				<div class="list-tags">
					<a href="" class="tag">Document</a> <a href="" class="tag">JSP-Servlet</a>
					<a href="" class="tag">Java</a> <a href="" class="tag">Maven</a> <a
						href="" class="tag">Library</a> <a href="" class="tag">HTML-CSS</a>
				</div>
			</div>
			<div class="item">
				<h2 class="title">ABOUT US</h2>
				<p>Đại học Bách Khoa - Đại học Đà Nẵng:</p>
				<br />
				<div class="list-tags">
					<a href="" class="tag">Công Huấn </a> <a href="" class="tag">Anh
						Khoa</a> <a href="" class="tag">Gia Bảo</a>
				</div>
				<br />
				<p>Team 3 - Lap trinh mang</p>
			</div>
			<div class="item">
				<h2 class="title">CONTACT</h2>
				<div class="subcribe-info">
					<p>Contact us if you have any questions.</p>
					<p>Join 3,453 other followers</p>
					<input type="email" name="" id=""
						placeholder="Enter your email address" />
					<button class="btn-subcribe">SUBCRIBE</button>
				</div>
			</div>
		</div>
		<hr />
		<div class="copyright">
			<p>
				<a href="#">WEBSITE BUILT WITH JSP-SERVLET</a>
			</p>
		</div>
	</footer>
	<%
		} else{
			response.sendRedirect("login.jsp");
		}
	%>
</body>
<style lang="scss">
@import
	url(https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css)
	;

@import url("https://fonts.googleapis.com/css?family=Roboto");

body {
	margin: 0;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol";
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	text-align: left;
	background-color: #fff;
}

main {
	color: #253e63;
	display: inline-flex;
	flex-direction: column;
	width: 90%;
	margin-left: 5%;
	height: 750px;
}

/* Style for the navigation bar */
.navbar {
	background-color: #545b62;
	overflow: hidden;
	width: 100%;
}

.navbar a {
	font-size: 20px;
	float: left;
	display: block;
	color: rgb(245, 239, 239);
	text-align: center;
	padding: 16px 30px 16px;
	text-decoration: none;
}

a:hover {
	background-color: #42474d;
}

.navbar .welcome, .navbar .logout {
	float: right;
}
/*style for main */
.jumbotron {
	padding: 2rem 1rem;
	margin: 1rem;
	margin-left: auto;
	margin-right: auto;
	background-color: #e9ecef;
	border-radius: 0.3rem;
	width: 90%;
	height: 25%;
	font-size: 20px;
	justify-content: center;
}

.jumbotron .content-page .display-3 {
	font-size: 4rem;
	font-weight: 300;
	line-height: 1;
	text-align: center;
}

.jumbotron .content-page p {
	width: 100%;
	font-size: 20px;
}

.jumbotron .content-page a {
	text-decoration: none;
	padding: 10px;
	border-radius: 7%;
	display: block;
	color: #7e848d;
	border: 1px solid;
	width: 130px;
}

.jumbotron .content-page a:hover {
	color: white;
	background-color: #37475f;
}

main .container {
	font-family: Arial, Helvetica, sans-serif;
	display: flex;
	flex-direction: column;
	border-radius: 4px;
	padding: 20px 20px 0px 20px;
	background-color: #475b79;
	box-shadow: #4d4f52 0px 1px 2px 0px, #333435 0px 1px 3px 1px;
	text-align: center;
	width: 90%;
	margin: 1rem;
	margin-left: auto;
	margin-right: auto;
	height: 400px;
	color: white;
}

main .container h1 {
	font-size: 3rem;
	border: 1px solid #ffffff;
	padding: 5px;
	padding-top: 30px;
	margin-top: 0;
	line-height: 1;
	text-align: center;
	color: white;
	height: 80px;
}

main .container .file-input {
	padding-top: 20px;
	border: 1px solid white;
	padding-bottom: 20px;
	height: 100px;
	background-color: #8b99a7;
}

main .container .file-input label {
	padding-top: 50px;
	margin-top: 20px;
	margin-bottom: 20px;
	font-size: 1.8rem;
	color: rgb(52, 59, 83);
	margin-right: 30px;
}

input[type="file"]::file-selector-button {
	margin-top: 20px;
	font-size: 1.5rem;
	color: #2a3441;
	border: 2px solid #162b46;
	padding: 0.2em 0.4em;
	border-radius: 0.2em;
	background-color: #ebebeb;
	transition: 1s;
}

input[type="file"]::file-selector-button:hover {
	background-color: #6f7f8f;
	color: rgb(255, 255, 255);
	border: 2px solid #1c2c3b;
	font-size: 1.5rem;
}

 input[type="submit"],input[type="reset"]
	{
	color: #2f3031;
	font-weight: bold;
	font-size: 1.3rem;
	width: 20%;
	height: 50px;
	margin: 30px 15px 30px 15px;
	cursor: pointer;
}

main .container input[type="submit"]:hover, main .container input[type="reset"]:hover
	{
	background-color: #6f7f8f;
	color: white;
	box-shadow: #848688 0px 1px 2px 0px, #848688 0px 1px 3px 1px;
}

main .container a:hover {
	background-color: #848688;
	color: white;
	box-shadow: #848688 0px 1px 2px 0px, #848688 0px 1px 3px 1px;
}

/*style for footer */
.footer-wrap {
	padding: 20px 0 0;
	background-color: #545b62;
}

.footer-content {
	width: 95%;
	margin: 0 auto;
	display: flex;
	color: #fff;
}
.item {
	width: 35%;
	margin: 0 15px 20px;
}

.item p {
	margin: 0;
	font-size: 20px;
}

.title {
	background-color: #ececec;
	font-size: 18px;
	padding: 12px;
	color: #000;
	margin: 0 0 10px 0;
	font-weight: unset;
	text-align: center;
	word-wrap: break-word;
	position: relative;
	user-select: none;
}

.list-tags {
	display: flex;
	flex-wrap: wrap;
}

.list-tags .tag {
	border: 1px solid #fff;
	color: #fff;
	text-decoration: none;
	font-size: 20px;
	padding: 2px 7px;
	margin: 0 10px 10px 0;
	transition: 0.6s all linear;
}

.subcribe-info {
	padding: 0 15px 25px;
	background-color: #545b62;
	color: #fff;
	text-align: center;
}

.subcribe-info p {
	margin-bottom: 24px;
}

footer input {
	display: block;
	padding: 5px 10px;
	margin: 0 auto;
	border-radius: 3px;
	transition: all 0.5s ease-in-out;
	border: 1px solid transparent;
	margin-bottom: 24px;
	background-color: transparent;
	color: #fff;
}

.btn-subcribe {
	cursor: pointer;
	background-color: #ececec;
	padding: 10px 25px;
	color: #000;
	font-size: 12px;
	line-height: 1.5;
	text-align: center;
	border: 0;
	outline: 0;
	font-weight: 400;
	letter-spacing: 1px;
}

.copyright {
	height: 50px;
	text-align: center;
	padding: 20px 0;
}

.copyright a {
	font-size: 20px;
	color: #d3b062;
	text-decoration: none;
}
</style>
</html>
