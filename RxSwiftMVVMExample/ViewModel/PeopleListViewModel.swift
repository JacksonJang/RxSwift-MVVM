import Foundation
import RxSwift

final class PeopleListViewModel {
    let title = "PeopleViewModel"
    
    private let peopleService: PeopleServiceProtocol
    
    init(service peopleService: PeopleServiceProtocol = PeopleService()) {
        self.peopleService = peopleService
    }
    
}
