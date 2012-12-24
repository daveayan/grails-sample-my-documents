package my.documents

class Document {
	String title
	String description
	Date addedOn = new Date()
	User user
	
    static constraints = {
    }
}
