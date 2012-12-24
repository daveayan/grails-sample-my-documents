package my.documents

class DocumentController {

	def add() {
		if (request.method == 'GET') {
			return [documentBean: new Document()]
		}
		
		Document document = new Document(
			title: params.document?.title, 
			description: params.document?.description, 
			addedOn: params.document?.addedOn,
			user: session.getAttribute("current_user"))
		
		document.save()
		
		if (document.hasErrors()) {
			return [documentBean: document]
		}
		
		redirect action: 'list'
	}
	
	def edit() {
		def document = Document.get(params.id)
		if (request.method == 'GET') {
			render view: 'add', model: [documentBean: document]
			return
		}
		
		document.title = params.document?.title
		document.description = params.document?.description
		document.addedOn = params.document?.addedOn
		document.save()
		
		redirect action: 'list'
	}
	
	def remove() {
		def document = Document.get(params.id)
		document.delete()
		redirect action: 'list'
	}
	
	def list() {
		[documents: Document.findAllWhere(user: session.getAttribute("current_user"))]
	}
}
