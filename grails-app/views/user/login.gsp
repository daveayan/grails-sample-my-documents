<html>
	<head>
		<meta name="layout" content="main">
		<g:external dir="css" file="common.css" />
		<title>Login</title>
	</head>
	<body id="tags">
		<a href="#page-body" class="skip">
			<g:message code="default.link.skip.label" default="Skip to content&hellip;"/>
		</a>
		<div id="page-body" role="main">
			<h2>Login</h2>
			<g:form action="login" controller="user">
			<table>
				<tr>
					<th>
						<g:render template="/common/formField"
							model="[name:'user', bean:userBean, field:'userName', label:'User Name']" />
					</th>
					<th>
						<g:render template="/common/formField"
							model="[name:'user', bean:userBean, field:'password', label:'Password']" />
					</th>
				</tr>
				<tr>
					<td>
						<p class="submit"><input type="submit" value="Login"/></p>
					</td>
				</tr>
			</table>
		</g:form>
		</div>
	</body>
</html>
			