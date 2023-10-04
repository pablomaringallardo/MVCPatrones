//
//  DetailViewController.swift
//  MVCPatrones
//
//  Created by Pablo Marín Gallardo on 4/10/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var character: CharacterModel!
    
    // MARK: - Outlets
    @IBOutlet var imageViewDetail: UIImageView!
    @IBOutlet var nameLabelDetail: UILabel!
    @IBOutlet var jobLabelDetail: UILabel!
    @IBOutlet var descriptionViewDetail: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageViewDetail.image = UIImage(named: character.image ?? "")
        nameLabelDetail.text = character.name
        jobLabelDetail.text = character.job
        descriptionViewDetail.text = character.description
        
    }
}
