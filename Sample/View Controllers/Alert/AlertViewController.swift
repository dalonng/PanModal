//
//  AlertViewController.swift
//  PanModal
//
//  Created by Stephen Sowole on 2/26/19.
//  Copyright © 2019 PanModal. All rights reserved.
//

import PanModal
import UIKit

class AlertViewController: UIViewController, PanModalPresentable {
  private let alertViewHeight: CGFloat = 68

  let alertView: AlertView = {
    let alertView = AlertView()
    alertView.layer.cornerRadius = 10
    return alertView
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
  }

  private func setupView() {
    view.addSubview(alertView)
    alertView.translatesAutoresizingMaskIntoConstraints = false
    alertView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    alertView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    alertView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    alertView.heightAnchor.constraint(equalToConstant: alertViewHeight).isActive = true
  }

  // MARK: - PanModalPresentable

  var panScrollable: UIScrollView? {
    nil
  }

  var shortFormHeight: PanModalHeight {
    .contentHeight(alertViewHeight)
  }

  var longFormHeight: PanModalHeight {
    shortFormHeight
  }

  var panModalBackgroundColor: UIColor {
    UIColor.black.withAlphaComponent(0.1)
  }

  var shouldRoundTopCorners: Bool {
    false
  }

  var showDragIndicator: Bool {
    true
  }

  var anchorModalToLongForm: Bool {
    false
  }

  var isUserInteractionEnabled: Bool {
    true
  }
}
