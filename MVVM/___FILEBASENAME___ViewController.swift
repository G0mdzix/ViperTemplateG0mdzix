import UIKit

class ___VARIABLE_MODULENAME___ViewController: UIViewController {

  // MARK: - Properties

  var presenter: ___VARIABLE_MODULENAME___ViewCallBack?

  // MARK: - Lifecycle

  init(presenter: ___VARIABLE_MODULENAME___ViewCallBack? = nil) {
    self.presenter = presenter
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
    fatalError(Constants.Coder.fatalError)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    guard let presenter = presenter else { return }
    presenter.handleViewDidLoad()
    view.backgroundColor = .orange
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    guard let presenter = presenter else { return }
    presenter.handleViewWillAppear()
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    guard let presenter = presenter else { return }
    presenter.handleViewWillDisappear()
  }
}

// MARK: - ___VARIABLE_MODULENAME___ViewDelegate

extension ___VARIABLE_MODULENAME___ViewController: ___VARIABLE_MODULENAME___ViewDelegate {
}

// MARK: - PrivateFunctions

extension ___VARIABLE_MODULENAME___ViewController {
}

// MARK: - Layouts

extension ___VARIABLE_MODULENAME___ViewController {
  private func layout() {
    addViews()
  }

  private func addViews() {
  }
}

// MARK: - Constants

private enum Constants {
  enum Coder {
    static let fatalError = "init(coder:) has not been implemented"
  }
}
