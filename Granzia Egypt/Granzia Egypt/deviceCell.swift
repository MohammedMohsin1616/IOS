//
//  deviceCell.swift
//  Granzia Egypt
//
//  Created by Abeer  on 8/11/18.
//  Copyright © 2018 Abeer . All rights reserved.
//

import UIKit

class deviceCell: UITableViewCell {

    @IBOutlet weak var deviceLable: UILabel!
    
    @IBOutlet weak var deviceImage: UIImageView!
    
    func setDevice (d: Device ){
        deviceImage.image = d.Image
        deviceLable.text = d.Lable
    }
}
