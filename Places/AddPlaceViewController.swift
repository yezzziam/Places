//
//  AddPlaceViewController.swift
//  Places
//
//  Created by Yegor Zubarets on 1/26/20.
//  Copyright © 2020 Yegor Zubarets. All rights reserved.
//

import UIKit

class AddPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
}

// MARK: tableView delegate

// MARK: Text field delegate

extension AddPlaceViewController: UITextFieldDelegate {
    
    // Hiding the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
