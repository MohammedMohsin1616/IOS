//
//  medicalDevicesList.swift
//  Granzia Egypt
//
//  Created by Abeer  on 8/11/18.
//  Copyright © 2018 Abeer . All rights reserved.
//

import UIKit

var Devices : [Device] = []
var devIndex = 0
class medicalDevicesList: UIViewController {
    
    
   
    @IBOutlet weak var collectionView:
    UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Devices = getDevices()
        
        collectionView.delegate = self
        collectionView.dataSource = self
       let cellLayout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
       /* cellLayout.sectionInset = UIEdgeInsetsMake(0, 5, 5, 0)
        cellLayout.minimumInteritemSpacing = 5 // */
		//if self.collectionView.frame.size.width <= 320 {
		    cellLayout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 10)/2, height:  self.collectionView.frame.height * 4/11)
		// }else {
			//cellLayout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 20)/3, height:  self.collectionView.frame.height * 1/4)//* /
			
		//}
        //tableView.delegate = self
        //tableView.dataSource = self
    }

    func getDevices() -> [Device]{
        
        var D : [Device] = []
        
        let d1 = Device(Image: #imageLiteral(resourceName: "2"), Lable: "A", Description: "Some Contetnt 10 Some Contetnt 11 Some Contetnt 12 Some Contetnt 13 Some Contetnt 14 Some Contetnt 15 Some Contetnt 16 Some Contetnt 17 Some Contetnt 18 Some Contetnt 19 Some Contetnt 111 Some Contetnt 112 Some Contetnt 113 Some Contetnt 114 Some Contetnt 115 Some Contetnt 116 Some Contetnt 117 Some Contetnt 118 Some Contetnt 119 Some Contetnt 121 Some Contetnt 122 Some Contetnt 123 Some Contetnt 124 Some Contetnt 125 Some Contetnt 126 Some Contetnt 127 Some Contetnt 128 Some Contetnt 129 Some Contetnt 131 Some Contetnt 132 Some Contetnt 133 Some Contetnt 134 Some Contetnt 135 Some Contetnt 136 Some Contetnt 137 Some Contetnt 138 Some Contetnt 139 ")
        let d2 = Device(Image: #imageLiteral(resourceName: "9"), Lable: "B", Description: "Some Contetnt 2")
        let d3 = Device(Image: #imageLiteral(resourceName: "3"), Lable: "C", Description: "Some Contetnt 3")
        let d4 = Device(Image: #imageLiteral(resourceName: "8"), Lable: "D", Description: "Some Contetnt 4")
        let d5 = Device(Image: #imageLiteral(resourceName: "4"), Lable: "E", Description: "Some Contetnt 5")
        let d6 = Device(Image: #imageLiteral(resourceName: "1"), Lable: "F", Description: "Some Contetnt 6")
        let d7 = Device(Image: #imageLiteral(resourceName: "7"), Lable: "G", Description: "Some Contetnt 7")
        let d8 = Device(Image: #imageLiteral(resourceName: "5"), Lable: "H", Description: "Some Contetnt 8")
        let d9 = Device(Image: #imageLiteral(resourceName: "6"), Lable: "I", Description: "Some Contetnt 9")
        D.append(d1)
        D.append(d2)
        D.append(d3)
        D.append(d4)
        D.append(d5)
        D.append(d6)
        D.append(d7)
        D.append(d8)
        D.append(d9)
        
        return D
    }
}

extension medicalDevicesList: UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Devices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dev = Devices[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeviceCell") as! deviceCell 
        cell.setDevice(d:dev)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        devIndex = indexPath.row
        performSegue(withIdentifier: "details", sender: self)
    }
    /*func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
    }*/
}
extension medicalDevicesList: UICollectionViewDelegate ,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        devIndex = indexPath.item
        performSegue(withIdentifier: "details", sender: self)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Devices.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell_Device", for: indexPath) as! CollectionViewCell
        let dev = Devices[indexPath.row]
        cell.setDevice(d: dev)
        return cell
    }
}






















