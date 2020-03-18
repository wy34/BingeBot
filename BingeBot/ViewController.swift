//
//  ViewController.swift
//  BingeBot
//
//  Created by William Yeung on 3/17/20.
//  Copyright © 2020 William Yeung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showsLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var bingeBotSpokenLabel: UILabel!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var showsStackView: UIStackView!
    
    
    var shows = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showsStackView.isHidden = true
        randomShowStackView.isHidden = true
    }

    @IBAction func bingeButton(_ sender: Any) {
        randomShowLabel.text = shows.randomElement()
        randomShowLabel.isHidden = false
        bingeBotSpokenLabel.isHidden = false
    }
    
    
    func updateShowsLabel() {
        showsLabel.text = shows.joined(separator: ", ")
    }
    
    @IBAction func addShowBtnWasPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else { return }
        
        if (addShowTextField.text!.count >= 1) {
            shows.append(showName)
            updateShowsLabel()
            addShowTextField.text = ""
            
            showsStackView.isHidden = false
            
            if shows.count > 1 {
                randomShowStackView.isHidden = false
                bingeBotSpokenLabel.isHidden = true
                randomShowLabel.isHidden = true
            }
        }
    }
    
}

