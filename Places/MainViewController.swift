//
//  MainViewController.swift
//  Places
//
//  Created by Yegor Zubarets on 1/21/20.
//  Copyright © 2020 Yegor Zubarets. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let listOfNamesForPlaces = ["Samila The Kitchen", "Zalmaniko", "Gemma", "Casino San Remo"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfNamesForPlaces.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = listOfNamesForPlaces[indexPath.row]
        cell.imageView?.image = UIImage(named: listOfNamesForPlaces[indexPath.row])

        return cell
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
