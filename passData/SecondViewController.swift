//
//  SecondViewController.swift
//  passData
//
//  Created by Abdiel Mg on 22/12/23.
//

import UIKit

protocol SecondViewControllerDelegate {
    func didTappedButton(message: String)
}

class SecondViewController: UIViewController {
    var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func passDataButtonTapped(_ sender: Any) {
        delegate?.didTappedButton(message: "Sent from SecondViewController to FirstViewController")
    }

}

