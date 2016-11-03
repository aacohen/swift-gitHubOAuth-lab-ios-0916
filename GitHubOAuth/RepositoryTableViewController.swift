//
//  ReposTableViewController.swift
//  GitHubOAuth
//
//  Created by Joel Bell on 7/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class RepositoryTableViewController: UITableViewController {

    let store = RepositoryDataStore.sharedInstance
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Repositories"
        
        store.getRepositories { error in
            
            (error == nil) ? self.tableView.reloadData() : print(error?.localizedDescription)
            
        }

    }

    // MARK: Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.repositories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! RepositoryTableViewCell

        cell.repository = store.repositories[indexPath.row]
        return cell
    }

    // MARK: Action
    
    @IBAction func logoutButtonTapped(_ sender: AnyObject) {
//        if GitHubAPIClient.deleteAccessToken != Error {
//            //dismiss/close table view controller.
        }

    }


