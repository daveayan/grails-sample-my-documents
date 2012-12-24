<html>
	<head>
		<meta name="layout" content="main">
		<g:external dir="css" file="common.css" />
		<title>Add new Tag</title>
	</head>
	<body id="tags">
		<a href="#page-body" class="skip">
			<g:message code="default.link.skip.label" default="Skip to content&hellip;"/>
		</a>
		<g:render template="/layouts/leftmenu" />
		<div id="page-body" role="main">
			<h2>Add new Tag</h2>
			<g:form action="${ tagBean.id ? 'edit' : 'add'}" id="${tagBean?.id}">
			<table>
				<tr>
					<th>
						<g:render template="/common/formField"
							model="[name:'tag', bean:tagBean, field:'name', label:'Tag Name']" />
					</th>
				</tr>
				<tr>
					<td>
						<p class="submit"><input type="submit" value="${ tagBean.id ? 'Update' : 'Add'} Tag"/></p>
					</td>
				</tr>
			</table>
		</g:form>
		</div>
	</body>
</html>
			