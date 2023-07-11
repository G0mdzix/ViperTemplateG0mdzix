import UIKit

class ___VARIABLE_MODULENAME___Presenter {

  // MARK: - Properties

  weak var view: ___VARIABLE_MODULENAME___ViewDelegate?

  // MARK: - Private Properties

  private let interactor: ___VARIABLE_MODULENAME___PresenterCallBack
  private let router: ___VARIABLE_MODULENAME___RouterDelegate

  // MARK: - Lifecycle

  init(
    view: ___VARIABLE_MODULENAME___ViewDelegate,
    interactor: ___VARIABLE_MODULENAME___PresenterCallBack,
    router: ___VARIABLE_MODULENAME___RouterDelegate
  ) {
      self.interactor = interactor
      self.router = router
      self.view = view
  }
}

// MARK: - ___VARIABLE_MODULENAME___ViewCallBack

extension ___VARIABLE_MODULENAME___Presenter: ___VARIABLE_MODULENAME___ViewCallBack {
  func handleViewDidLoad() {
    interactor.performWhenViewDidLoad()
  }

  func handleViewWillAppear() {
    interactor.performWhenViewWillAppear()
  }

  func handleViewWillDisappear() {
    interactor.performWhenViewWillDisappear()
  }
}

// MARK: - ___VARIABLE_MODULENAME___PresenterDelegate

extension ___VARIABLE_MODULENAME___Presenter: ___VARIABLE_MODULENAME___PresenterDelegate {
}

// MARK: - Private Functions

extension ___VARIABLE_MODULENAME___Presenter {
}

// MARK: - Constants

private enum Constants {
}
