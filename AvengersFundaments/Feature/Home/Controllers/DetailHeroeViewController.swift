//
//  DetailHeroeViewController.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 11/7/21.
//

import UIKit

class DetailHeroeViewController: UIViewController {
    
    @IBOutlet var imageHeroe: UIImageView?
    @IBOutlet var descriptionHeroe: UITextView?
    
    var superheroe: Superheroe?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageHeroe?.image = UIImage(named: superheroe?.image ?? "")
        descriptionHeroe?.text = superheroe?.description
        // Do any additional setup after loading the view.
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
