//
//  DetailHeroeViewController.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 11/7/21.
//

import UIKit
import Cosmos

class DetailHeroeViewController: UIViewController {
    
    @IBOutlet var imageHeroe: UIImageView?
    @IBOutlet var descriptionHeroe: UITextView?
    @IBOutlet var scoreHeroe: CosmosView?
    
    var superheroe: Superheroe?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageHeroe?.image = UIImage(named: superheroe?.image ?? "")
        descriptionHeroe?.text = superheroe?.description
        scoreHeroe?.rating = superheroe?.score ?? 0.0
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.title = superheroe?.name
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
