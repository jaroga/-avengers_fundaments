//
//  HomeViewController.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 8/7/21.
//

import UIKit

class VillainsCollectionViewController: UIViewController {
    
    @IBOutlet var villainsCollectionView: UICollectionView?
    
    private let villainsRepository = VillainRepository()
    private var villains: Villains = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        villainsCollectionView?.delegate = self
        villainsCollectionView?.dataSource = self
        
        villains = villainsRepository.villainSample

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
        self.tabBarController?.navigationItem.title = "Villanos"
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.

        guard let destination = segue.destination as? DetailVillainViewController,
              let villain = sender as? Villain else {
            return
        }
        
        destination.villain = villain
    }
}

extension VillainsCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return villains.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VillainsCollectionCellView.cellIdentifier,
                                                      for: indexPath) as? VillainsCollectionCellView
        
        if(indexPath.row < villains.count) {
            cell?.configureCell(villain: villains[indexPath.row])
        }
        
        return cell ?? UICollectionViewCell()
    }
    
    // UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 223, height: 185.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row < villains.count {
            let villain = villains[indexPath.row]
            performSegue(withIdentifier: "SEGUE_VILLAINS_TO_DETAIL", sender: villain)
        }
    }
    
}
