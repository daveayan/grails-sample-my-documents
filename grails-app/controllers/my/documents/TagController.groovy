package my.documents

class TagController {

	def add() {
		if (request.method == 'GET') {
			return [tagBean: new Tag()]
		}
		
		Tag tag = new Tag(name: params.tag?.name, user: session.getAttribute("current_user"))
		tag.save()
		
		redirect action: 'list'
	}
	
	def edit() {
		def tag = Tag.get(params.id)
		if (request.method == 'GET') {
			render view: 'add', model: [tagBean: tag]
			return
		}
		
		tag.name = params.tag?.name
		tag.save()
		
		redirect action: 'list'
	}
	
	def remove() {
		def tag = Tag.get(params.id)
		tag.delete()
		redirect action: 'list'
	}
	
	def list() {
		[tags: Tag.findAllWhere(user: session.getAttribute("current_user"))]
	}
}
