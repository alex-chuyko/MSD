//
//  ViewController.swift
//  lab1New
//
//  Created by Admin on 07.02.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextView: UITextField!
    @IBOutlet weak var outputDollar: UILabel!
    @IBOutlet weak var outputEuro: UILabel!
    @IBOutlet weak var outputRub: UILabel!
    
    @IBAction func buttonConvert(_ sender: Any) {
        let inputText = inputTextView.text;
        
        if(isNumber(inputString: inputText!)){
            let blrRub = Double(inputText!);
            
            outputRub.text = blrToRub(blr: blrRub!);
            outputEuro.text = blrToEuro(blr: blrRub!);
            outputDollar.text = blrToDollars(blr: blrRub!);
        } else {
            let alert = UIAlertController(title: "Error", message: "Check your entries!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            inputTextView.text = "";
            outputRub.text = "";
            outputEuro.text = "";
            outputDollar.text = "";
        }
        
    }
    
    func isNumber(inputString: String) -> Bool {
        if !inputString.isEmpty {
            if let cost = Double(inputString) {
                return true;
            }
            else{
                return false;
            }
        }
        return false;
    }
    
    func blrToDollars(blr: Double) -> String {
        return "$" + String(format:"%.2f", blr / 1.91);
    }
    
    func blrToEuro(blr: Double) -> String {
        return "€" + String(format:"%.2f", blr / 2.05);
    }
    
    func blrToRub(blr: Double) -> String {
        return "₽" + String(format:"%.2f", blr / 0.0325);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

