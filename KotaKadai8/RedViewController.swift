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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let delegate = UIApplication.shared.delegate as? AppDelegate
        setLabelAndSlider(delegate!.shareNumber)
    }

    @IBAction private func changeSlider(_ sender: Any) {
        let delegate = UIApplication.shared.delegate as? AppDelegate
        delegate!.shareNumber = redSlider.value
        setLabelAndSlider(delegate!.shareNumber)
    }

    private func setLabelAndSlider(_ number: Float) {
        redSlider.value = number
        redTextLabel.text = String(number)
    }

}
