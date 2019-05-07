//
//  ViewController.swift
//  htmlString
//
//  Created by MacMini on 4/16/19.
//  Copyright © 2019 Immanent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textViewTest: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let htmlFile = Bundle.main.path(forResource: "demo", ofType: "html") //Calls local html File
        let htmlString = try? String(contentsOfFile: htmlFile!, encoding: String.Encoding.utf8) //Converts to String
        textViewTest.attributedText = htmlString?.htmlAttributed(family: "Roboto", size: 14.0, color: .orange)  //Assign Attributed String to TextView
    }

    

}

