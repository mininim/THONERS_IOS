//
//  MyQuestCollectionViewCell.swift
//  youngminhaewireFrame
//
//  Created by 이민섭 on 2022/08/20.
//

import UIKit

class MyQuestCollectionViewCell: UICollectionViewCell {
    var questName: UILabel = {
        let name = UILabel()
        name.numberOfLines = 2
        name.text = "노마드강의듣고 여행 웹 개발하기"
        name.font = UIFont(name:  "SpoqaHanSansNeo-Medium", size: 16)
        name.textColor = UIColor(rgb: 0x2A2A2C)
        name.translatesAutoresizingMaskIntoConstraints = false
        
        return name
    }()
    
    var memt : UILabel = {
        
        let memt = UILabel()
        memt.text = "노마드강의듣고 여행 웹 개발하기"
        memt.font = UIFont(name:  "SpoqaHanSansNeo-Regular", size: 14)
        memt.textColor = UIColor(rgb: 0xA4A5AA)
        memt.translatesAutoresizingMaskIntoConstraints = false
        return memt
        
    }()
    
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
        d.text = "8월 30일~9월16일(42일전)"
        d.font = UIFont(name: "SpoqaHanSansNeo-Regular", size: 14)
        d.textColor = UIColor(rgb: 0x78797D)
        d.translatesAutoresizingMaskIntoConstraints = false
        return d
        
    }()
    
    var mem : UILabel = {
        let m = UILabel()
        m.text = "팀원"
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
    
    var redImage : UIImageView = {
        
        let redRecImage = UIImage(named: "redRec")
        let rI = UIImageView(image: redRecImage)
        
        rI.translatesAutoresizingMaskIntoConstraints = false
        return rI
        
    }()
    
    var mozip : UILabel = {
        let m = UILabel()
        m.text = "마감"
        m.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 12)
        m.textColor = UIColor(rgb: 0xFFFFFF)
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
    }()
    
    var dDay : UILabel = {
        let m = UILabel()
        m.text = "D-12"
        m.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 16)
        m.textColor = UIColor(rgb: 0xFFFFFF)
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
    }()
    
    
    var p : UILabel = {
        let m = UILabel()
        m.text = "포지션"
        m.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 14)
        m.textColor = UIColor(rgb: 0x78797D)
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
    }()
    
    var position : UILabel = {
        let m = UILabel()
        m.text = "Frontend-IOS"
        m.font = UIFont(name: "SpoqaHanSansNeo-Regular", size: 14)
        m.textColor = UIColor(rgb: 0x78797D)
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
    }()
    
    var prog : UILabel = {
        let m = UILabel()
        m.text = "진행률"
        m.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 14)
        m.textColor = UIColor(rgb: 0x78797D)
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
    }()

    
    var progression : UILabel = {
        let m = UILabel()
        m.text = "67%"
        m.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 14)
        m.textColor = UIColor(rgb: 0xF44C56)
        m.translatesAutoresizingMaskIntoConstraints = false
        return m
    }()
    
    
    var progressionbar : UIProgressView = {
        let view = UIProgressView()
        /// progress 배경 색상
        view.trackTintColor = UIColor(rgb: 0xE8E8EE)
        /// progress 진행 색상
        view.progressTintColor = UIColor(rgb: 0xF44C56)
        view.progress = 0.75
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        handleConstraints()
        backgroundColor = UIColor(rgb: 0xFFFFFF)
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
    
    
    func handleConstraints() {
        
        self.addSubview(questName)
        questName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        questName.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        
    
        self.addSubview(memt)
        memt.topAnchor.constraint(equalTo: questName.bottomAnchor, constant: 2).isActive = true
        memt.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        
        
        self.addSubview(d)
        d.topAnchor.constraint(equalTo: memt.bottomAnchor, constant: 21).isActive = true
        d.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        
        self.addSubview(duration)
        duration.centerYAnchor.constraint(equalTo: d.centerYAnchor).isActive = true
        duration.leadingAnchor.constraint(equalTo: d.trailingAnchor, constant: 32).isActive = true
        
        self.addSubview(mem)
        mem.topAnchor.constraint(equalTo: d.bottomAnchor, constant: 6).isActive = true
        mem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        
        self.addSubview(member)
        member.centerYAnchor.constraint(equalTo: mem.centerYAnchor).isActive = true
        member.leadingAnchor.constraint(equalTo: duration.leadingAnchor).isActive = true
        
        self.addSubview(redImage)
        redImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        redImage.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 68).isActive = true
        redImage.leadingAnchor.constraint(equalTo: self.trailingAnchor, constant: -68).isActive = true
        redImage.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -17).isActive = true
        
        self.addSubview(mozip)
        mozip.leadingAnchor.constraint(equalTo: redImage.leadingAnchor, constant: 8).isActive = true
        mozip.trailingAnchor.constraint(equalTo: redImage.trailingAnchor, constant: -8).isActive = true
        mozip.topAnchor.constraint(equalTo: redImage.topAnchor, constant: 20).isActive = true
        
        self.addSubview(dDay)
        dDay.centerXAnchor.constraint(equalTo: mozip.centerXAnchor).isActive = true
        dDay.topAnchor.constraint(equalTo: mozip.bottomAnchor, constant: 3).isActive = true
        
        self.addSubview(p)
        p.topAnchor.constraint(equalTo: mem.bottomAnchor, constant: 6).isActive = true
        p.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        
        
        self.addSubview(position)
        position.centerYAnchor.constraint(equalTo: p.centerYAnchor).isActive = true
        position.leadingAnchor.constraint(equalTo: duration.leadingAnchor).isActive = true
    
                
        
        self.addSubview(prog)
        prog.topAnchor.constraint(equalTo: p.bottomAnchor, constant: 6).isActive = true
        prog.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        
        self.addSubview(progression)
        progression.centerYAnchor.constraint(equalTo: prog.centerYAnchor).isActive = true
        progression.leadingAnchor.constraint(equalTo: duration.leadingAnchor).isActive = true
            
        
        self.addSubview(progressionbar)
        
        progressionbar.topAnchor.constraint(equalTo: progression.bottomAnchor, constant: 12).isActive = true
        progressionbar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        progressionbar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -31).isActive = true
        
        
    }
    
}
