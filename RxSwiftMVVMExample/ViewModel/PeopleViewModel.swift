import Foundation

struct PeopleViewModel {
    
    private let person: Person
    
    var displayName:String {
        return person.name
    }
    
    init(person: Person) {
        self.person = person
    }
    
}
