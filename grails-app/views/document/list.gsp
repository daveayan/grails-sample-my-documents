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
			<h2>Documents:</h2>
	
			<g:link controller="document" action="add">Add New Document</g:link>
			<g:if test="${! documents}">
				<br/>You have no documents
			</g:if>
			<g:if test="${documents}">
				<table>
					<thead>
						<tr>
							<th>Title</th>
							<th>Description</th>
							<th>Added On</th>
							<th>Edit</th>
							<th>Remove</th>
						</tr>
					</thead>
					<g:each var="document" in="${documents}">
						<tr>
							<td>${document.title}</td> 
							<td>${document.description}</td>
							<td><g:formatDate date="${document.addedOn}" format="yyyy-MM-dd"/></td>
							<td>
								<g:form method="GET" url="[controller:'document', action:'edit', id:document.id]">
									<p class="submit"><input type="submit" value="Edit"/></p>
								</g:form>
							</td>
							<td>
								<g:form method="POST" url="[controller:'document', action:'remove', id:document.id]">
									<p class="submit"><input type="submit" value="Remove"/></p>
								</g:form>
							</td>
						</tr>
					</g:each>
				</table>
			</g:if>
		</div>
	</body>
</html>
