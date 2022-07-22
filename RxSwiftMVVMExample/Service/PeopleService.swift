import Foundation
import RxSwift

protocol PeopleServiceProtocol {
    func getPeople() -> Observable<[Person]>
}

class PeopleService: PeopleServiceProtocol {
    func getPeople() -> Observable<[Person]> {
        return Observable.create { observer -> Disposable in
            guard let path = Bundle.main.path(forResource: "people", ofType: "json") else {
                observer.onError(NSError(domain: "", code: -1, userInfo: nil))
                return Disposables.create { }
            }
            
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let people = try JSONDecoder().decode([Person].self, from: data)
                
                observer.onNext(people)
            } catch {
                observer.onError(error)
            }
            
            return Disposables.create { }
        }
    }
}
