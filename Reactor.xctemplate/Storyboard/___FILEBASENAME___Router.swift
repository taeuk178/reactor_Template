
import UIKit
//import ReactorKit
//import RxSwift

class ___VARIABLE_productName___Router {
	func moveToNextView(with source: UIViewController, reactor: ___VARIABLE_productName___Reactor) {
		guard let viewController = viewControllerFromStoryboard(of: ___VARIABLE_productName___ViewController.self) else { return }
		viewController.reactor = reactor
		source.navigationController?.pushViewController(viewController, animated: true)
	}
	
	func presentToNextView(with source: UIViewController, reactor: ___VARIABLE_productName___Reactor) {
		guard let viewController = viewControllerFromStoryboard(of: ___VARIABLE_productName___ViewController.self) else { return }
		viewController.reactor = reactor
		viewController.modalPresentationStyle = .overFullScreen
		source.present(viewController, animated: true, completion: nil)
	}
	
	func viewControllerFromStoryboard<T: UIViewController>(of type: T.Type) -> T? {
		return UIStoryboard(name: "___VARIABLE_productName___ViewController", bundle: nil).instantiateViewController(
			withIdentifier: String(describing: T.self)
		) as? T
	}
}
