//
//  DetailInformationCollectionViewCell.swift
//  youngminhaewireFrame
//
//  Created by 이민섭 on 2022/08/21.
//

import UIKit

class DetailInformationView: UICollectionViewCell {
    
    
    var d : UILabel = {
        let d = UILabel()
        d.text = "기간"
        d.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 14)
        d.textColor = UIColor(rgb: 0x78797D)
        d.translatesAutoresizingMaskIntoConstraints = false
        return d
        
    }()
    
    var duration : UILabel = {
        let d = UILabel()
        d.text = "8월 30일~9월16일"
        d.font = UIFont(name: "SpoqaHanSansNeo-Regular", size: 14)
        d.textColor = UIColor(rgb: 0x78797D)
        d.translatesAutoresizingMaskIntoConstraints = false
        return d
        
    }()
    
    
    var l : UILabel = {
        let d = UILabel()
        d.text = "장소"
        d.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 14)
        d.textColor = UIColor(rgb: 0x78797D)
        d.translatesAutoresizingMaskIntoConstraints = false
        return d
        
    }()
    
    var location : UILabel = {
        let d = UILabel()
        d.text = "온라인"
        d.font = UIFont(name: "SpoqaHanSansNeo-Regular", size: 14)
        d.textColor = UIColor(rgb: 0x78797D)
        d.translatesAutoresizingMaskIntoConstraints = false
        return d
        
    }()
    
    
    var mem : UILabel = {
        let m = UILabel()
        m.text = "인원"
        m.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 14)
        m.textColor = UIColor(rgb: 0x78797D)
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
    }()
    
    var member : UILabel = {
        let m = UILabel()
        m.text = "4명/6명"
        m.font = UIFont(name: "SpoqaHanSansNeo-Regular", size: 14)
        m.textColor = UIColor(rgb: 0x78797D)
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
    }()
    
    var mlabel : UILabel = {
        let m = UILabel()
        m.text = "참가비"
        m.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 14)
        m.textColor = UIColor(rgb: 0x78797D)
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
    }()
    
    var money : UILabel = {
        let m = UILabel()
        m.text = "4명/6명"
        m.font = UIFont(name: "SpoqaHanSansNeo-Regular", size: 14)
        m.textColor = UIColor(rgb: 0x78797D)
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
    }()
    
    var clabel : UILabel = {
        let m = UILabel()
        m.text = "완료 시"
        m.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 14)
        m.textColor = UIColor(rgb: 0x78797D)
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
    }()
    
    var reward : UILabel = {
        
        let m = UILabel()
        m.text = "멘토링 예정 + 200% 보상"
        m.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 14)
        m.textColor = UIColor(rgb: 0xF44C56)
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
            
    }()
    
    var dev : UIImageView = {
        
        let m = UIImageView()
        m.image = UIImage(named: "greenDev")
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
        
    }()
    
    var designer : UIImageView = {
        let m = UIImageView()
        m.image = UIImage(named: "purpleDesign")
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
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
    
    func handleConstraints() {
        
        self.addSubview(d)
        d.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        d.topAnchor.constraint(equalTo: self.topAnchor, constant: 21).isActive = true
        
        self.addSubview(duration)
        duration.centerYAnchor.constraint(equalTo: d.centerYAnchor).isActive = true
        duration.leadingAnchor.constraint(equalTo: d.trailingAnchor, constant: 34).isActive = true
        
        self.addSubview(l)
        l.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        l.topAnchor.constraint(equalTo: d.bottomAnchor, constant: 8).isActive = true
        
        self.addSubview(location)
        location.centerYAnchor.constraint(equalTo: l.centerYAnchor).isActive = true
        location.leadingAnchor.constraint(equalTo: duration.leadingAnchor).isActive = true
        
        self.addSubview(mem)
        mem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        mem.topAnchor.constraint(equalTo: l.bottomAnchor, constant: 8).isActive = true
        
        self.addSubview(member)
        member.centerYAnchor.constraint(equalTo: mem.centerYAnchor).isActive = true
        member.leadingAnchor.constraint(equalTo: duration.leadingAnchor).isActive = true
        
        
        self.addSubview(mlabel)
        mlabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        mlabel.topAnchor.constraint(equalTo: mem.bottomAnchor, constant: 8).isActive = true
        
        self.addSubview(money)
        money.centerYAnchor.constraint(equalTo: mlabel.centerYAnchor).isActive = true
        money.leadingAnchor.constraint(equalTo: duration.leadingAnchor).isActive = true
        
        
        self.addSubview(clabel)
        clabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        clabel.topAnchor.constraint(equalTo: mlabel.bottomAnchor, constant: 8).isActive = true
        
        self.addSubview(reward)
        reward.centerYAnchor.constraint(equalTo: clabel.centerYAnchor).isActive = true
        reward.leadingAnchor.constraint(equalTo: duration.leadingAnchor).isActive = true
        
        self.addSubview(dev)
        dev.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        dev.topAnchor.constraint(equalTo: clabel.bottomAnchor, constant: 21).isActive = true
        
        
        self.addSubview(designer)
        designer.centerYAnchor.constraint(equalTo: dev.centerYAnchor).isActive = true
        designer.leadingAnchor.constraint(equalTo: dev.trailingAnchor, constant: 12).isActive = true
        
    }
    
    
    
    
}
