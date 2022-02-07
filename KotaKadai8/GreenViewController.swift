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
    private var numberFloat: Float = 0.0

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        numberFloat = UserDefaults.standard.float(forKey: "shareNumberFloat")
        setLabelAndSlider(numberFloat)
    }

    @IBAction func changeSlider(_ sender: Any) {
        numberFloat = greenSlider.value
        setLabelAndSlider(numberFloat)
        UserDefaults.standard.set(numberFloat, forKey: "shareNumberFloat")
    }

    private func setLabelAndSlider(_ number: Float) {
        greenSlider.value = number
        greenTextLabel.text = String(number)
    }

}
