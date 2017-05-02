//
//  HomeCollectionViewTableViewCell.swift
//  INGHackthon
//
//  Created by Hakan Yildizay [Mobil Yazilim  Servisi] on 02/05/2017.
//  Copyright © 2017 ING BANK. All rights reserved.
//

import UIKit

class HomeCollectionViewTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet var collView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collView.dequeueReusableCell(withReuseIdentifier: "headerCollCell", for: indexPath)
        
        return cell
        
    }

}
