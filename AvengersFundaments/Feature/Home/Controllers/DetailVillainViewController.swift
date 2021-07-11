//
//  DetailVillainViewController.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 11/7/21.
//

import UIKit
import Cosmos

class DetailVillainViewController: UIViewController {
    
    @IBOutlet var imageVillain: UIImageView?
    @IBOutlet var descriptionVillain: UITextView?
    @IBOutlet var scoreVillain: CosmosView?
    
    var villain: Villain?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageVillain?.image = UIImage(named: villain?.image ?? "")
        descriptionVillain?.text = villain?.description
        scoreVillain?.rating = villain?.score ?? 0.0
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = villain?.name
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
