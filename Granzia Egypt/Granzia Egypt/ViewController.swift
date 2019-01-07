//
//  ViewController.swift
//  Granzia Egypt
//
//  Created by Abeer  on 8/11/18.
//  Copyright © 2018 Abeer . All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var descriptionLable: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameLable.text = Devices[devIndex].Lable
        Image.image = Devices[devIndex].Image
        descriptionLable.text = Devices[devIndex].Description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

