package my.documents

class UserController {
	
	def login() {
		if (request.method == 'GET') {
			return [userBean: new User()]
		}
		
		def matchUser = User.findAllWhere(userName: params.user?.userName, password: params.user?.password)
		if(matchUser?.size() != 1) {
			redirect(uri:'/')
			return
		}
		
		session.setAttribute("current_user", matchUser[0])
		redirect(controller: 'dashboard', action: 'view')
	}
	
	def add() {
		if (request.method == 'GET') {
			return [userBean: new User()]
		}
		User user = new User(firstName: params.user?.firstName, lastName: params.user?.lastName, userName: params.user?.userName, password: params.user?.password)
		user.save()
		
		if (user.hasErrors()) {
			return [userBean: user]
		}
		
		redirect(uri:'/')
	}
	
	def logout() {
		session.invalidate()
		redirect(uri:'/')
	}
}
