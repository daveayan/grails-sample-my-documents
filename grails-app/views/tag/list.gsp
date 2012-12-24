<html>
	<head>
		<meta name="layout" content="main">
		<g:external dir="css" file="common.css" />
		<title>Tags</title>
	</head>
	<body id="tags">
		<a href="#page-body" class="skip">
			<g:message code="default.link.skip.label" default="Skip to content&hellip;"/>
		</a>
		<g:render template="/layouts/leftmenu" />
		<div id="page-body" role="main">
			<h2>Tags:</h2>
			<g:link controller="tag" action="add">Add New Tag</g:link>
		
			<g:if test="${! tags}">
				<br/>You have no tags
			</g:if>
		
			<g:if test="${tags}">
				<table>
					<thead>
						<tr>
							<th>Name</th>
							<th>Edit</th>
							<th>Remove</th>
						</tr>
					</thead>
					<g:each var="tag" in="${tags}">
						<tr>
							<td>${tag.name}</td>
							<td>
								<g:form method="GET" url="[controller:'tag', action:'edit', id:tag.id]">
									<p class="submit"><input type="submit" value="Edit Tag"/></p>
								</g:form>
							</td>
							<td>
								<g:form method="POST" url="[controller:'tag', action:'remove', id:tag.id]">
									<p class="submit"><input type="submit" value="Remove Tag"/></p>
								</g:form>
							</td> 
						</tr>
					</g:each>
				</table>
			</g:if>
		</div>
	</body>
</html>
