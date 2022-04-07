<%@page import="model.bean.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.bean.Source"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Personal Form</title>
<script src="https://kit.fontawesome.com/1939b78ca2.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<%
	Account account = (Account) request.getSession().getAttribute("account");

	if (account != null) {
	%>
	<header>
		<div class="navbar">
			<a href="">Home</a> <a href="">Document</a> <a
				href="<%=request.getContextPath()%>/CheckLogoutServlet"
				class="logout">Logout </a>
		</div>
	</header>
	<main>
		<div class="jumbotron">
			<div class="content-page">
				<table>
					<caption>Document list</caption>
					<tr>
						<th>Filename</th>
						<th>Status</th>
						<th>Download</th>
						<th>Delete</th>
					</tr>
					<%
					List<Source> sources = (List<Source>) request.getAttribute("sources");
					
					for (Source source : sources) {
					%>
					<tr>
						<td><%=source.getFilename()%></td>
						<td class='center'>
							<%
							if (source.isStatus()) {
							%> available
						</td>
						<td><a class='center'
							href="<%=request.getContextPath()%>/DownloadServlet?id=<%=source.getId()%>"
							target="_self"><i class="fas fa-download"></i></a></td>
						<%
						} else {
						%>
						unavailable
						</td>
						<td><a class='center' href="/" onclick="return false;"><i
								class="fas fa-download"></i></a></td>
						<%
						}
						%>
						<td><a class='center'
							href="<%=request.getContextPath()%>/DeleteServlet?id=<%=source.getId()%>"><i
								class="fas fa-trash-alt"></i></a></td>
					</tr>
					<%
					}
					%>
				</table>
				<a href="<%=request.getContextPath()%>/OptionalServlet?index=3"
					class="button">Return</a>
			</div>
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
	} else {
	response.sendRedirect("login.jsp");
	}
	%>
</body>
<style>
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
	flex-direction: row;
	width: 90%;
	margin-left: 5%;
	height: 650px;
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

.navbar .logout {
	float: right;
}
/*style for main */
main .jumbotron {
	padding: 1rem 1rem;
	margin-bottom: 1rem;
	margin-top: 1rem;
	margin-left: auto;
	margin-right: auto;
	background-color: #e9ecef;
	border-radius: 0.3rem;
	width: 90%;
	font-size: 20px;
	justify-content: center;
}

.jumbotron .content-page table {
	width: 100%;
	margin-bottom: 20px;
}

.jumbotron .content-page caption {
	font-size: large;
	font-weight: bold;
	margin-bottom: 20px;
}

.jumbotron .content-page th, .jumbotron .content-page td {
	border-bottom: 1px solid #1f3055;
}

.jumbotron .content-page th {
	background-color: #e1effc;
	padding: 5px;
}

.jumbotron .content-page td.center {
	text-align: center;
	padding: 5px;
}

.jumbotron .content-page tr:hover {
	background-color: #e1effc;
}

.jumbotron .content-page a {
	color: #1f3055;
	text-decoration: none;
}

.jumbotron .content-page a:hover {
	background-color: #e1effc;
}

.jumbotron .content-page .button {
	width: 10%;
	color: #1f3055;
	margin-right: 20px;
	float: right;
	text-align: center;
	text-decoration: none;
	border: 1px solid #1f3055;
	border-radius: 4px;
	padding: 10px;
}

.jumbotron .content-page .button:hover {
	background-color: #e1effc;
	box-shadow: #e1effc 0px 1px 2px 0px, #e1effc 0px 1px 3px 1px;
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
	@media
	(
	max-width
	:
	992px)
{
	width
	
	
	
	
	:
	
	
	 
	
	
	95
	
	
	
	
	%;
}

@media ( max-width : 750px) {
	width
	
	
	
	
	:
	
	
	 
	
	
	95
	
	
	
	
	%;
	display
	
	
	
	
	:
	
	
	 
	
	
	block
	
	
	
	
	;
}

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
