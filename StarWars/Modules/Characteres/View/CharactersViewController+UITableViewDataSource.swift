//
//  CharactersViewController+UITableView.swift
//  StarWars
//
//  Created by Pedro Henrique Prates Peralta on 6/24/16.
//  Copyright © 2016 Pedro Henrique Peralta. All rights reserved.
//

import UIKit

let cellIidentifier = "CellIdentifier"


extension CharactersViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.charactersList.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIidentifier)
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: cellIidentifier)
        }
        
        let character = self.charactersList[indexPath.row]
        
        cell!.selectionStyle = .None
        cell!.textLabel?.text = character["name"] ?? ""
        
        return cell!
    }
}
