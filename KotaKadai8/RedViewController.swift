//
//  RedViewController.swift
//  KotaKadai8
//
//  Created by 前田航汰 on 2022/02/07.
//

import UIKit

class RedViewController: UIViewController {

    @IBOutlet private weak var redTextLabel: UILabel!
    @IBOutlet private weak var redSlider: UISlider!
    private var numberFloat: Float = 0.0

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        numberFloat = UserDefaults.standard.float(forKey: "shareNumberFloat")
        setLabelAndSlider(numberFloat)
    }

    @IBAction private func changeSlider(_ sender: Any) {
        numberFloat = redSlider.value
        setLabelAndSlider(numberFloat)
        UserDefaults.standard.set(numberFloat, forKey: "shareNumberFloat")
    }

    private func setLabelAndSlider(_ number: Float) {
        redSlider.value = number
        redTextLabel.text = String(number)
    }

}
