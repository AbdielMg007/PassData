//
//  ViewController.swift
//  passData
//
//  Created by Abdiel Mg on 22/12/23.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {
    @IBOutlet weak var textViewFromSecondViewController: UITextView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // find out why you have to prepare for segue!
        // find ouy why you have to delegate until here
        // oh! remember the example seen into appRewiewController code
        if let destination = segue.destination as? SecondViewController {
            destination.delegate = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func performSegueButtonTapped(_ sender: Any) {
    performSegue(withIdentifier: "goToSecondViewController", sender: nil)
    }
    func didTappedButton(message: String) {
        print(message)
        let date = Date()
        print("at \(date)", date)
        textViewFromSecondViewController.text.append(message + "\(date)")
        
    }
}
