//
//  TrendingCollectionViewCell.swift
//  youngminhaewireFrame
//
//  Created by 이민섭 on 2022/08/21.
//

import UIKit

class TrendingCollectionViewCell: UICollectionViewCell {
    var redImage : UIImageView = {
        
        let redRecImage = UIImage(named: "1")
        let rI = UIImageView(image: redRecImage)
        
        rI.translatesAutoresizingMaskIntoConstraints = false
        return rI
        
    }()
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        handleConstraints()
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        self.layer.cornerRadius = 8
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize(width: 5, height: 10)
        self.clipsToBounds = true
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func handleConstraints(){
        self.addSubview(redImage)
        
    }
    
}
    
    
    
    
    
