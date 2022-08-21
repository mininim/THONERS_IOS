//
//  DetailLeadCommemtCollectionViewCell.swift
//  youngminhaewireFrame
//
//  Created by 이민섭 on 2022/08/21.
//

import UIKit

class DetailLeadCommemtView: UICollectionViewCell {
    
    
    
    var 모임장 : UILabel = {
        
        let d = UILabel()
        d.text = "모임장"
        d.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 14)
        d.textColor = UIColor(rgb: 0x78797D)
        d.translatesAutoresizingMaskIntoConstraints = false
        return d
        
    }()
    
    var userImage : UIImageView = {
        let d = UIImageView()
        d.image = UIImage(named: "userIcon")
        d.translatesAutoresizingMaskIntoConstraints = false

        return d
        
    }()
    
    var leaderName : UILabel = {
        
        let d = UILabel()
        d.text = "석주영"
        d.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 16)
        d.textColor = UIColor(rgb: 0x2A2A2C)
        d.translatesAutoresizingMaskIntoConstraints = false
        return d
        
    }()
    
    var memt : UILabel = {
        
        let d = UILabel()
        d.text = "안녕하시오"
        d.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 14)
        d.textColor = UIColor(rgb: 0x78797D)
        d.translatesAutoresizingMaskIntoConstraints = false
        return d
        
    }()
    
    var introduction : UILabel = {
        
        let d = UILabel()
        d.numberOfLines = 0
        d.text = "처음 iOS 클론 코딩하고 협업해봐요.\n저도 노마드 강의 재미나게 듣고 있어요\n사전 미션에 참여하고 첫 협업 프로젝트를 같이 해봐요:)"
        d.font = UIFont(name: "SpoqaHanSansNeo-Regular", size: 14)
        d.textColor = UIColor(rgb: 0x78797D)
        d.translatesAutoresizingMaskIntoConstraints = false
        return d
        
    }()
     
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(frame: CGRect) {
         super.init(frame: frame)
         handleConstraints()
     }
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
    func handleConstraints(){
        
        self.addSubview(모임장)
        모임장.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        모임장.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        
        self.addSubview(userImage)
        userImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 28).isActive = true
        userImage.topAnchor.constraint(equalTo: 모임장.bottomAnchor, constant: 14).isActive = true
        
        
        self.addSubview(leaderName)
        leaderName.leadingAnchor.constraint(equalTo: userImage.trailingAnchor, constant: 23).isActive = true
        leaderName.topAnchor.constraint(equalTo: self.topAnchor, constant: 64).isActive = true
        
        
        self.addSubview(memt)
        memt.leadingAnchor.constraint(equalTo: leaderName.leadingAnchor).isActive = true
        memt.topAnchor.constraint(equalTo: leaderName.bottomAnchor, constant: 1).isActive = true
        
        self.addSubview(introduction)
        introduction.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        introduction.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 43).isActive = true
        
        
        
        
        
        
        
    }
    
    
    
    
}
