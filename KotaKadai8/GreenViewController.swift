//
//  GreenViewController.swift
//  KotaKadai8
//
//  Created by 前田航汰 on 2022/02/07.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet private weak var greenTextLabel: UILabel!
    @IBOutlet private weak var greenSlider: UISlider!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let delegate = UIApplication.shared.delegate as? AppDelegate
        setLabelAndSlider(delegate!.shareNumber)
    }

    @IBAction private func changeSlider(_ sender: Any) {
        let delegate = UIApplication.shared.delegate as? AppDelegate
        delegate!.shareNumber = greenSlider.value
        setLabelAndSlider(delegate!.shareNumber)
    }

    private func setLabelAndSlider(_ number: Float) {
        greenSlider.value = number
        greenTextLabel.text = String(number)
    }

}
