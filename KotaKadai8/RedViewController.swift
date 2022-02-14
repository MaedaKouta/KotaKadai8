//
//  RedViewController.swift
//  KotaKadai8
//
//  Created by 前田航汰 on 2022/02/07.
//

import UIKit

class RedViewController: UIViewController {

    @IBOutlet private weak var textLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        setLabelAndSlider(delegate.shareNumber)
    }

    @IBAction private func changeSlider(_ sender: Any) {
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        delegate.shareNumber = slider.value
        setLabelAndSlider(delegate.shareNumber)
    }

    private func setLabelAndSlider(_ number: Float) {
        slider.value = number
        textLabel.text = String(number)
    }

}
