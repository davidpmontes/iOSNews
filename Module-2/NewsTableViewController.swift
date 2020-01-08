//
//  NewsTableViewController.swift
//  Module-2
//
//  Created by David Montes on 1/1/20.
//  Copyright © 2020 LearnAppMaking. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController
{
    var titles:[String] = [
        "Mario 3 Released",
        "Mega Man X is Awesome",
        "Super Metroid Beats All"
    ]
    
    var authors:[String] = [
        "Link",
        "Donkey Kong",
        "Toad"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //dequeue a table view cell
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier")
        
        //If there's no cell, create one
        if (cell == nil)
        {
            cell = UITableViewCell(style:UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cellIdentifier")
        }
        
        //Set the text and detail text
        cell!.textLabel?.text = titles[indexPath.row]
        cell!.detailTextLabel?.text = authors[indexPath.row]
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        var detailVC = NewsDetailViewController(nibName: "NewsDetailViewController", bundle: nil)
        
        detailVC.title = titles[indexPath.row]
        detailVC.author = authors[indexPath.row]
        
        navigationController?.pushViewController(detailVC, animated: true)
    }

}
