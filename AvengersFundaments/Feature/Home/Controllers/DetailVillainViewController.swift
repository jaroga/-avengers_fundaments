//
//  DetailVillainViewController.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 11/7/21.
//

import UIKit

class DetailVillainViewController: UIViewController {
    
    @IBOutlet var imageVillain: UIImageView?
    @IBOutlet var descriptionVillain: UITextView?
    
    var villain: Villain?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageVillain?.image = UIImage(named: villain?.image ?? "")
        descriptionVillain?.text = villain?.description
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
