//
//  HeroesCollectionCellViewController.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 11/7/21.
//

import UIKit

class VillainsCollectionCellView: UICollectionViewCell {
    static let cellIdentifier: String = String(describing: VillainsCollectionCellView.self)
    
    @IBOutlet var cellView: UIView?
    @IBOutlet var imageVillain: UIImageView?
    @IBOutlet var labelName: UILabel?

    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        imageVillain?.image = nil
        labelName?.text = nil
    }
    
    func configureCell(villain: Villain) {
        imageVillain?.image = UIImage(named: villain.image ?? "")
        labelName?.text = villain.name
    }

}
