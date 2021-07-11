//
//  HomeViewController.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 8/7/21.
//

import UIKit

class HeroesCollectionViewController: UIViewController {
    
    @IBOutlet var heroesCollectionView: UICollectionView?
    
    private let heroesRepository = SuperheroeRepository()
    private var superheroes: Superheroes = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        heroesCollectionView?.delegate = self
        heroesCollectionView?.dataSource = self
        
        superheroes = heroesRepository.superheroeSample

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
        self.tabBarController?.navigationItem.title = "Superheroes"
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.

        guard let destination = segue.destination as? DetailHeroeViewController,
              let superheroe = sender as? Superheroe else {
            return
        }
        
        destination.superheroe = superheroe
    }
}

extension HeroesCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return superheroes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HeroesCollectionCellView.cellIdentifier,
                                                      for: indexPath) as? HeroesCollectionCellView
        
        if(indexPath.row < superheroes.count) {
            cell?.configureCell(heroe: superheroes[indexPath.row])
        }
        
        return cell ?? UICollectionViewCell()
    }
    
    // UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 223, height: 185.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row < superheroes.count {
            let heroe = superheroes[indexPath.row]
            performSegue(withIdentifier: "SEGUE_HEROES_TO_DETAIL", sender: heroe)
        }
    }
    
}
