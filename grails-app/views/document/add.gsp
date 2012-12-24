<html>
	<head>
		<meta name="layout" content="main">
		<g:external dir="css" file="common.css" />
		<title>Add new Document</title>
	</head>
	<body id="tags">
		<a href="#page-body" class="skip">
			<g:message code="default.link.skip.label" default="Skip to content&hellip;"/>
		</a>
		<g:render template="/layouts/leftmenu" />
		<div id="page-body" role="main">
			<h2>Add new Document</h2>
			<g:form action="${ documentBean.id ? 'edit' : 'add'}" id="${documentBean?.id}">
			<table>
				<tr>
					<th>
						<g:render template="/common/formField"
							model="[name:'document', bean:documentBean, field:'title', label:'Title']" />
					</th>
					<th>
						<g:render template="/common/formField"
							model="[name:'document', bean:documentBean, field:'description', label:'Description']" />
					</th>
					<th>
						<g:datePicker name="document.addedOn" value="${documentBean.addedOn}" precision="day"></g:datePicker>
					</th>
				</tr>
				<tr>
					<td>
						
						<p class="submit"><input type="submit" value="${ documentBean.id ? 'Update' : 'Add'} Document"/></p>
					</td>
				</tr>
			</table>
		</g:form>
		</div>
	</body>
</html>
			