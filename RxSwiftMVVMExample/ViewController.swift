import UIKit
import RxSwift

class ViewController: UIViewController {
    let disposeBag = DisposeBag()
    
    private var viewModel: PeopleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let service = PeopleService()
        service.getPeople().subscribe(onNext: { people in
            print(people)
        }).disposed(by: disposeBag)
        
    }
    
}

