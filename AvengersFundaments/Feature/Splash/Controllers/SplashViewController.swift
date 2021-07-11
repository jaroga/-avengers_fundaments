//
//  ViewController.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 7/7/21.
//

import UIKit

class SplashViewController: UIViewController {
    
    @IBOutlet weak var acctivityIndicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
        acctivityIndicator.startAnimating()
        loadData()
    }
    
    // MARK: - Private methods
    private func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) { [weak self] in
            //self?.performSegue(withIdentifier: "SEGUE_FROM_SPLASH_TO_HOME", sender: nil)
            
            let storyboardHome = UIStoryboard(name: "Home", bundle: nil)
            if let destination = storyboardHome.instantiateInitialViewController() {
                self?.navigationController?.setViewControllers([destination], animated: true)
            }
            // self?.navigationController?.pushViewController(destination, animated: true) para anidar pila de navegación
        }
    }


}

