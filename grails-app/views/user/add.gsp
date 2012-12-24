<html>
	<head>
		<meta name="layout" content="main">
		<g:external dir="css" file="common.css" />
		<title>Register</title>
	</head>
	<body id="tags">
		<a href="#page-body" class="skip">
			<g:message code="default.link.skip.label" default="Skip to content&hellip;"/>
		</a>
		<div id="page-body" role="main">
			<h2>Register</h2>
			<g:form action="${ userBean.id ? 'edit' : 'add'}" id="${userBean?.id}">
			<table>
				<tr>
					<th>
						<g:render template="/common/formField"
							model="[name:'user', bean:userBean, field:'firstName', label:'First Name']" />
					</th>
					<th>
						<g:render template="/common/formField"
							model="[name:'user', bean:userBean, field:'lastName', label:'Last Name']" />
					</th>
				</tr>
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
						<p class="submit"><input type="submit" value="${ userBean.id ? 'Update' : 'Create New'} Profile"/></p>
					</td>
				</tr>
			</table>
		</g:form>
		</div>
	</body>
</html>
			