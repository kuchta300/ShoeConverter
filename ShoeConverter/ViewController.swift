//
//  ViewController.swift
//  ShoeConverter
//
//  Created by David Kuchta on 9/26/14.
//  Copyright (c) 2014 David Kuchta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MensShoeSizeTextField: UITextField!
   
    @IBOutlet weak var womansShoeSizeTextField: UITextField!
   
    @IBOutlet weak var mensConvertedShowSizeLabel: UILabel!
    @IBOutlet weak var womansConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertWomansShoeSize(sender: UIButton) {
        
        let sizeFromTextField  = Double ((womansShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womansConvertedShoeSizeLabel.hidden = false
        womansConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
     
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
   let sizeFromTextField = MensShoeSizeTextField.text
        let numberFromTextField = sizeFromTextField.toInt()
        var integerFromTextField = numberFromTextField!
        let conversionConstant = 30
        integerFromTextField += conversionConstant
        mensConvertedShowSizeLabel.hidden = false
        let stringWithUpdatedShoeSize = "\(integerFromTextField)" + " in European Shoe Size";
        mensConvertedShowSizeLabel.text = stringWithUpdatedShoeSize
        
    }
}

