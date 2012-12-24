<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<g:external dir="css" file="common.css" />
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="page-body" role="main">
			<h1>Manage Your Documents here !!!</h1>
			<table>
				<tr>
					<td>
						<g:link controller="user" action="login">Existing Users - Login</g:link>
					</td>
					<td>
						<g:link controller="user" action="add">New Users - Register</g:link>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>
