//
//  MainViewController.swift
//  Notifications
//
//  Created by Дмитрий Бельков on 20.02.2021.
//

import UIKit

class MainViewController: UITableViewController {
    
    let notificationsNames = [
        "111", "222", "333", "444", "555", "666", "777"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notificationsNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = notificationsNames[indexPath.row]
        cell.imageView?.image = UIImage(named: notificationsNames[indexPath.row])
        
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
