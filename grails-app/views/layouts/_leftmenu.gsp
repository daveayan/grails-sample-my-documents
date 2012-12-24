<div id="status" role="complementary">
	<ul>
		<li>Hello ${session.current_user?.firstName} ${session.current_user?.lastName}</li>
		<li><g:link controller="document" action="list">My Documents</g:link></li>
		<li><g:link controller="tag" action="list">My Tags</g:link></li>
		<li><g:link controller="user" action="profile">My Profile</g:link></li>
		<li></li>
		<li><g:link controller="user" action="logout">Logout</g:link></li>
	</ul>
</div>