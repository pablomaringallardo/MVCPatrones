//
//  SplashViewController.swift
//  MVCPatrones
//
//  Created by Pablo Marín Gallardo on 4/10/23.
//

import UIKit

class SplashViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if(!activityIndicator.isAnimating) {
            activityIndicator.startAnimating()
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        activityIndicator.stopAnimating()
    }
    
    private func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            // TODO: Navegar a la pantalla de home
            let homeView = HomeTableViewController()
            self.navigationController?.setViewControllers([homeView], animated: true)
        }
    }
}
