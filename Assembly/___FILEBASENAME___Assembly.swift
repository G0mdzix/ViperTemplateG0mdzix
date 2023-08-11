import UIKit

class ___VARIABLE_MODULENAME___Assembly {
  func build() -> UIViewController {
    let view = CreateModules.buildViewController()
    let interactor = CreateModules.buildInteractor()
    let router = CreateModules.buildRouter()
    let presenter = CreateModules.buildPresenter(
      view: view,
      interactor: interactor,
      router: router
    )

    view.presenter = presenter
    interactor.presenter = presenter
    router.view = view

    return view
  }
}

private enum CreateModules {
  static func buildViewController() -> ___VARIABLE_MODULENAME___ViewController {
    let viewController = ___VARIABLE_MODULENAME___ViewController()
    return viewController
  }

  static func buildInteractor() -> ___VARIABLE_MODULENAME___Interactor {
    let interactor = ___VARIABLE_MODULENAME___Interactor(
      services: ___VARIABLE_MODULENAME___Interactor.Services()
    )
    return interactor
  }

  static func buildRouter() -> ___VARIABLE_MODULENAME___Router {
    let router = ___VARIABLE_MODULENAME___Router()
    return router
  }

  static func buildPresenter(
    view: ___VARIABLE_MODULENAME___ViewDelegate,
    interactor: ___VARIABLE_MODULENAME___PresenterCallBack,
    router: ___VARIABLE_MODULENAME___RouterDelegate
  ) -> ___VARIABLE_MODULENAME___Presenter {
    let preseneter = ___VARIABLE_MODULENAME___Presenter(
      view: view,
      interactor: interactor,
      router: router
    )
    return preseneter
  }
}
