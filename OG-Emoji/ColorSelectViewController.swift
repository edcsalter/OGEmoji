//
//  ColorSelectViewController.swift
//  OG-Emoji
//
//  Created by Edward Salter on 9/9/20.
//  Copyright © 2020 theiOSdev. All rights reserved.
//

import UIKit

class ColorSelectViewController: UIViewController {
    var squarSelect = UIImageView()
//    var colors = Array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        squarSelect.image = UIImage.init(named: "squares")
        squarSelect.frame = CGRect(x: 57, y: 138, width: 64, height: 64)
        self.view.addSubview(squarSelect)
        
        for row in 0..<3 {
            for col in 0..<3 {
                
            }
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
