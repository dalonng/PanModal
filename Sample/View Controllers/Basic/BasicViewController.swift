//
//  BasicViewController.swift
//  PanModal
//
//  Created by Stephen Sowole on 2/26/19.
//  Copyright © 2019 PanModal. All rights reserved.
//

import PanModal
import UIKit

class BasicViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = #colorLiteral(red: 0.1019607843, green: 0.1137254902, blue: 0.1294117647, alpha: 1)
  }
}

extension BasicViewController: PanModalPresentable {
  override var preferredStatusBarStyle: UIStatusBarStyle {
    .lightContent
  }

  var panScrollable: UIScrollView? {
    nil
  }

  var longFormHeight: PanModalHeight {
    .contentHeight(200)
  }

  var anchorModalToLongForm: Bool {
    false
  }

  var showDragIndicator: Bool {
    false
  }
}
