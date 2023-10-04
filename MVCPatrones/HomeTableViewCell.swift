//
//  HomeTableViewCell.swift
//  MVCPatrones
//
//  Created by Pablo Marín Gallardo on 4/10/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet var viewHomeCell: UIView!
    @IBOutlet var imageHomeCell: UIImageView!
    @IBOutlet var nameHomeCell: UILabel!
    
    
    // Se llama 1 vez y me prepara la celda
    override func awakeFromNib() {
        super.awakeFromNib()
        viewHomeCell.layer.cornerRadius = 4.0
        viewHomeCell.layer.shadowColor = UIColor.gray.cgColor
        viewHomeCell.layer.shadowOffset = .zero
        viewHomeCell.layer.shadowOpacity = 0.7
        viewHomeCell.layer.shadowRadius = 4.0
        
        imageHomeCell.layer.cornerRadius = 4.0
        imageHomeCell.layer.opacity = 0.7
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageHomeCell.image = nil
        nameHomeCell.text = nil
    }
    
    func updateViews() {
        
    }
}
