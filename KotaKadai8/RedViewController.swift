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

    private var appDelegate: AppDelegate {
            (UIApplication.shared.delegate as? AppDelegate)!
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setLabelAndSlider(appDelegate.shareNumber)
    }

    @IBAction private func changeSlider(_ sender: Any) {
        appDelegate.shareNumber = slider.value
        setLabelAndSlider(appDelegate.shareNumber)
    }

    private func setLabelAndSlider(_ number: Float) {
        slider.value = number
        textLabel.text = String(number)
    }

}
