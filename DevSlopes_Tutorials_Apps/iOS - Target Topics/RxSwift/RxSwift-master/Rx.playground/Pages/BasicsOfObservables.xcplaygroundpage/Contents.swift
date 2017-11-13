import RxSwift
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

let disposeBag = DisposeBag()

let numberSequence = Observable.just(5)

let numberSubscription = numberSequence.subscribe(onNext: {
    print($0)
}).addDisposableTo(disposeBag)

let helloSequence = Observable.from(["H","e", "l", "l", "o"])

let helloSubscription = helloSequence.subscribe { event in
    switch event {
    case .next(let value):
        print(value)
    case .error(let error):
        print(error)
    case .completed:
        print("Completed")
    }
}.addDisposableTo(disposeBag)

//This is for relese memory
//This is not recomendet
//Better way is to use disposeBag
//helloSubscription.dispose()

