//
//  WeekdaysTableViewController.swift
//  TableView Guided Project
//
//  Created by Eric Andersen on 8/20/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

import UIKit

class WeekdaysTableViewController: UITableViewController {
    
    var weekdays: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weekdays.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DayCell", for: indexPath)

        print(indexPath)
        
        // Configure the cell...
        let dayOfWeek = weekdays[indexPath.row]
        cell.textLabel?.text = dayOfWeek
        

        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 1. Check the segue's identifier.
        // 2. Get the new view controller using segue.destinationViewController.
        // 3. Get the day of the week the user tapped on.
        // 4. Pass the selected object (day of the week) to the new view controller.
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ToDetailView" {
            if let destinationViewController = segue.destination as? DayViewController {
                if let indexPath = tableView.indexPathForSelectedRow {
                    let day = weekdays[indexPath.row]
                    destinationViewController.day = day
                }
            }
        }
    }
    

}

































