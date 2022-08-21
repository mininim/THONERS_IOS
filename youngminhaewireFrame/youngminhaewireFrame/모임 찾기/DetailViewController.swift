//
//  DetailViewController.swift
//  youngminhaewireFrame
//
//  Created by 이민섭 on 2022/08/20.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {

    
    //눌러진 meeting 에 대한 값이 있는 것임!!
    var meeting : Meeting?
    
    @IBOutlet weak var 모임: UIButton!
    
    @IBOutlet weak var 사전미션참여하기: UILabel!
    
    @IBOutlet weak var subDay: UILabel!
    
    @IBOutlet weak var informationList: UICollectionView!
    
    @IBAction func backbuttonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func 모임buttontapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func enrollTapped(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "EnrollTestViewController", bundle: nil )
        guard let vc = storyboard.instantiateViewController(withIdentifier: "EnrollTestViewController") as? EnrollTestViewController else { return }
        
        vc.meeting = self.meeting

        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
        
    }
        override func viewDidLoad() {
        super.viewDidLoad()
        
        informationList.dataSource = self
        informationList.delegate = self
        informationList.register(DetailMissionView.self, forCellWithReuseIdentifier: "DetailMissionView")
        informationList.register(DetailInformationView.self, forCellWithReuseIdentifier: "DetailInformationView")
        informationList.register(DetailLeadCommemtView.self, forCellWithReuseIdentifier: "DetailLeadCommemtView")
        
        updateUI()
       
    }
    
    func updateUI() {
        
        모임.titleLabel?.font = UIFont(name:  "SpoqaHanSansNeo-Medium", size: 19)
        사전미션참여하기.font = UIFont(name:  "SpoqaHanSansNeo-Regular", size: 16)
        subDay.text = meeting?.submissionDate
        subDay.font = UIFont(name:  "SpoqaHanSansNeo-Medium", size: 20)
        
    
    }
    
    
}
 
extension DetailViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
            
        if indexPath.section == 0 {
            
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailMissionView", for: indexPath) as?  DetailMissionView else {
                return UICollectionViewCell()
            }
            
            cell.keyWord.text = meeting?.keywords[0] ?? "없음"
            cell.missionName.text = meeting?.name ?? "없음"
            cell.missions.text = meeting?.submissions ?? "없음"
            
            
            
            return cell
            
            
        } else if indexPath.section == 1 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailInformationView", for: indexPath) as?  DetailInformationView else {
                return UICollectionViewCell()
            }
            
            return cell
            //업데이트
            
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailLeadCommemtView", for: indexPath) as? DetailLeadCommemtView else {
                return UICollectionViewCell()
            }
            
            cell.leaderName.text = meeting?.leader
            cell.memt.text = meeting?.ment
            cell.introduction.text = meeting?.introduction
           
            
            return cell
            
        }
        return UICollectionViewCell()
    }
}





extension DetailViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var size : CGSize = CGSize()
        
        if indexPath.section == 0 {
            let width : CGFloat = collectionView.bounds.width
            let height : CGFloat = 182
            size = CGSize(width: width, height: height)
            return size
            
        }else if indexPath.section == 1{
            let width : CGFloat = collectionView.bounds.width
            let height : CGFloat = 309
            size = CGSize(width: width, height: height)
            return size
        }else {
            let width : CGFloat = collectionView.bounds.width
            let height : CGFloat = 278
            size = CGSize(width: width, height: height)
            return size
        }
        
    }

}
