//
//  DetailMissionCollectionViewCell.swift
//  youngminhaewireFrame
//
//  Created by 이민섭 on 2022/08/21.
//

import UIKit

class DetailMissionView: UICollectionViewCell{
    
    var keyWord: UILabel = {
        let name = UILabel(frame: CGRect(x: 0, y: 0, width: 54, height: 27)  )
        name.text = "여행"
        name.font = UIFont(name:  "SpoqaHanSansNeo-Medium", size: 12)
        name.textColor = UIColor(rgb: 0xFFFFFF)
        name.translatesAutoresizingMaskIntoConstraints = false
        name.backgroundColor = .black
        name.layer.masksToBounds = true
        name.layer.cornerRadius = 4
        return name
    }()
    
    var missionName: UILabel = {
        let name = UILabel()
        name.numberOfLines = 2
        name.sizeToFit()
        name.text = "노마드 강의 듣고 여행 웹 개발하기"
        name.font = UIFont(name:  "SpoqaHanSansNeo-Medium", size: 20)
        name.textColor = UIColor(rgb: 0x2A2A2C)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    var 사전미션 : UILabel = {
        let name = UILabel()
        name.sizeToFit()
        name.text = "사전 미션"
        name.font = UIFont(name:  "SpoqaHanSansNeo-Medium", size: 14)
        name.textColor = UIColor(rgb: 0x78797D)
        name.translatesAutoresizingMaskIntoConstraints = false
        return  name
    }()
    
    var missions : UILabel = {
        let mission = UILabel()
        mission.numberOfLines = 2
        mission.text = "노마드 강의 수업 수료증 제출\n여행관련 응답"
        mission.font = UIFont(name:  "SpoqaHanSansNeo-Regular", size: 14)
        mission.textColor = UIColor(rgb: 0x78797D)
        mission.translatesAutoresizingMaskIntoConstraints = false
        return  mission
        
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
        self.addSubview(keyWord)
        keyWord.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        keyWord.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        
        self.addSubview(missionName)
        missionName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        missionName.topAnchor.constraint(equalTo: keyWord.bottomAnchor, constant: 18).isActive = true
        
        self.addSubview(사전미션)
        사전미션.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        사전미션.topAnchor.constraint(equalTo: missionName.bottomAnchor, constant: 18).isActive = true
        
        self.addSubview(missions)
        missions.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        missions.topAnchor.constraint(equalTo: 사전미션.bottomAnchor, constant: 8).isActive = true
        
        
    }
    
    
    
    
}
