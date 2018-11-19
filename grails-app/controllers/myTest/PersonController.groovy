package myTest

class PersonController {
	
	def index = { def nickNames = true
		render(view: "index", model: [name: "Andre", nickNames: nickNames])
	}

    def person() { 

/*		def myAlbums = ["Victory Lap", "Not For Sale", "Good Thing", "Addicted to the Underground"]
*/		Person person = new Person(firstName: 'Andre', lastName:'Robinson', age:24, me:true, albums:["Victory Lap", "Not For Sale", "Good Thing", "Addicted to the Underground"])
		
		render(view: "person", model: [person:person])
		
	}
	
	def show(){
		[ person:person ]
	}
}
