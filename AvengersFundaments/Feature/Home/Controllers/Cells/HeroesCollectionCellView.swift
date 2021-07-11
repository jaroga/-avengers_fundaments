//
//  HeroesCollectionCellViewController.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 11/7/21.
//

import UIKit

class HeroesCollectionCellView: UICollectionViewCell {
    static let cellIdentifier: String = String(describing: HeroesCollectionCellView.self)
    
    @IBOutlet var cellView: UIView?
    @IBOutlet var imageHeroe: UIImageView?
    @IBOutlet var labelName: UILabel?

    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        imageHeroe?.image = nil
        labelName?.text = nil
    }
    
    func configureCell(heroe: Superheroe) {
        imageHeroe?.image = UIImage(named: heroe.image ?? "")
        labelName?.text = heroe.name
    }

}
