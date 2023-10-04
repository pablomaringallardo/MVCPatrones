//
//  HomeTableViewController.swift
//  MVCPatrones
//
//  Created by Pablo Marín Gallardo on 4/10/23.
//

import UIKit

class HomeTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleCharacterData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as? HomeTableViewCell else {
            return UITableViewCell()
        }
        
        let character = sampleCharacterData[indexPath.row]
        
        cell.imageHomeCell.image = UIImage(named: character.image ?? "")
        cell.nameHomeCell.text = character.name
        cell.accessoryType = .disclosureIndicator
        cell.selectionStyle = .none

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let character = sampleCharacterData[indexPath.row]
        let detailView = DetailViewController()
        detailView.character = character
        navigationController?.pushViewController(detailView, animated: true)
    }
}
