package my.documents

class User {
	String userName
	String password
	String firstName
	String lastName

	static constraints = {
		userName blank: false, unique: true, size: 1..15
		password blank: false, size: 1..15
		firstName blank: false
		lastName blank: false
	}
}
