//
//  TableViewController.swift
//  CustomCell
//
//  Created by Krešimir Sabljo on 15/05/2019.
//  Copyright © 2019 Krešimir Sabljo. All rights reserved.
//

import UIKit

struct 	cellData {
    let cell : Int!
    let text : String!
    let image : UIImage
}

class TableViewController: UITableViewController {

    var arrayCellData = [cellData]()
    
    
    override func viewDidLoad() {
        arrayCellData = [cellData(cell: 1, text: "First XIB", image: #imageLiteral(resourceName: "terminal")),
                         cellData(cell: 2, text: "Second XIB", image: #imageLiteral(resourceName: "terminal_1")),
                         cellData(cell: 2, text: "Second XIB", image: #imageLiteral(resourceName: "terminal")),
                         cellData(cell: 1, text: "First XIB", image: #imageLiteral(resourceName: "terminal_1")),]
        
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayCellData.count;
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if arrayCellData[indexPath.row].cell == 1
        {
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.mainImageView.image = arrayCellData[indexPath.row].image
            cell.mainLabel.text = arrayCellData[indexPath.row].text
            
            return cell
        }
        else if arrayCellData[indexPath.row].cell == 2
        {
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            
            cell.mainImageView.image = arrayCellData[indexPath.row].image
            cell.mainLabel.text = arrayCellData[indexPath.row].text
            
            return cell
        }
        else{
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.mainImageView.image = arrayCellData[indexPath.row].image
            cell.mainLabel.text = arrayCellData[indexPath.row].text
            
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayCellData[indexPath.row].cell == 1
        {
            return 250
        }
        else if arrayCellData[indexPath.row].cell == 2
        {
            return 100
        }
        else{
            return 250
        }
    }
}
