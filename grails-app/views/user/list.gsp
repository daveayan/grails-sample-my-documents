<html>
	<head>
		<meta name="layout" content="main">
		<g:external dir="css" file="common.css" />
		<title>Documents</title>
	</head>
	<body id="documents">
		<a href="#page-body" class="skip">
			<g:message code="default.link.skip.label" default="Skip to content&hellip;"/>
		</a>
		<g:render template="/layouts/leftmenu" />
		<div id="page-body" role="main">
			<h2>All Users:</h2>
	
			<g:if test="${! users}">
				<br/>There are no Users
			</g:if>
			<g:if test="${users}">
				<table>
					<thead>
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>User Name</th>
							<th>Password</th>
						</tr>
					</thead>
					<g:each var="user" in="${users}">
						<tr>
							<td>${user.firstName}</td> 
							<td>${user.lastName}</td>
							<td>${user.userName}</td> 
							<td>${user.password}</td>
						</tr>
					</g:each>
				</table>
			</g:if>
		</div>
	</body>
</html>
