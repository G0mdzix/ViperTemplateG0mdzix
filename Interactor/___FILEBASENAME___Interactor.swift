import Foundation

class ___VARIABLE_MODULENAME___Interactor {

  // MARK: - Properties

  weak var presenter: ___VARIABLE_MODULENAME___PresenterDelegate?

  // MARK: - Properties (private)

  private let services: Services

  // MARK: - Lifecycle

  init(services: Services) {
    self.services = services
  }
}

// MARK: - ___VARIABLE_MODULENAME___PresenterCallBack

extension ___VARIABLE_MODULENAME___Interactor: ___VARIABLE_MODULENAME___PresenterCallBack {
  func performWhenViewDidLoad() {
  }

  func performWhenViewWillAppear() {
  }

  func performWhenViewWillDisappear() {
  }
}

// MARK: - ___VARIABLE_MODULENAME___InteractorDelegate

extension ___VARIABLE_MODULENAME___Interactor: ___VARIABLE_MODULENAME___InteractorDelegate {
}

// MARK: - Services

extension ___VARIABLE_MODULENAME___Interactor {
  struct Services {
  }
}

// MARK: - Constants

private enum Constants {
}
