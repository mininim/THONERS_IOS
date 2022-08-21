//
//  QuestListViewController.swift
//  youngminhaewireFrame
//
//  Created by 이민섭 on 2022/08/20.
//

import UIKit

class QuestListViewController: UIViewController {
    
    @IBOutlet weak var buttonstackview: UIStackView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var trendingLabelTop: NSLayoutConstraint!
    @IBOutlet weak var mozipLabelTop: NSLayoutConstraint!
    @IBOutlet weak var trendingCollectionView: UICollectionView!
    @IBOutlet weak var resultCollectionView: UICollectionView!

    @IBOutlet weak var trendingLabel: UILabel!
    
    @IBOutlet weak var 모집중인모임: UILabel!
    @IBOutlet weak var 맞춘모임이에요: UILabel!
    
    @IBOutlet weak var 인기순: UIButton!
    @IBAction func firstKeyWordButtonTapped(_ sender: Any) {
        
        self.meetings = DataManager.shared.searchMeeting("오프라인")
        self.resultCollectionView.reloadData()
                
    }
    
    @IBAction func secondKeyWordButtonTapped(_ sender: Any) {
        self.meetings = DataManager.shared.searchMeeting("골프")
        self.resultCollectionView.reloadData()
                
    }
    
    
    @IBAction func thirdKeyWordButtonTapped(_ sender: Any) {
        self.meetings = DataManager.shared.searchMeeting("UIKIT")
        self.resultCollectionView.reloadData()
    }
    
    @IBAction func fourthKeyWordButtonTapped(_ sender: Any) {
        self.meetings = DataManager.shared.searchMeeting("BIG4")
        self.resultCollectionView.reloadData()
    }
    
    @IBAction func popularButtonTapped(_ sender: Any) {
        
        self.meetings = DataManager.shared.registeredMeeting.sorted(by: { a, b in
            a.meetingID! > b.meetingID!
        })
        self.resultCollectionView.reloadData()
        
    }
    
    @IBAction func big4buttonTapped(_ sender: Any) {
        
        
    }
    var meetings : [Meeting] = []
    var trendingQuests : [Quest] = [Quest1, Quest2]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //폰트 이름 찾기
        
//        for family in UIFont.familyNames.sorted(){
//            let names = UIFont.fontNames(forFamilyName: family)
//            print("Family: \(family) Font names : \(names)")
//        }
//
        
        meetings = DataManager.shared.registeredMeeting
        
        
        searchBar.delegate = self
        
        trendingCollectionView.delegate = self
        trendingCollectionView.dataSource = self
        trendingCollectionView.register(TrendingCollectionViewCell.self, forCellWithReuseIdentifier: "TrendingCollectionViewCell")

        trendingCollectionView.isPagingEnabled = true
        
        resultCollectionView.delegate = self
        resultCollectionView.dataSource = self
        resultCollectionView.register(QuestCollectionViewCell.self, forCellWithReuseIdentifier: "QuestCollectionViewCell")
        
        NotificationCenter.default.addObserver(self, selector: #selector(adjustTrendingCollectionView), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        
        //디자인
        self.searchBar.searchBarStyle = .minimal

        trendingLabel.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 19)
        모집중인모임.font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 19)
        맞춘모임이에요.font = UIFont(name: "SpoqaHanSansNeo-Regular", size: 14)
        self.view.backgroundColor = UIColor(named: "background")
        인기순.titleLabel?.font = UIFont(name: "SpoqaHanSansNeo-Regular", size: 14)
        
        
    }
    
}

extension QuestListViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        
        if collectionView == resultCollectionView {
            return meetings.count
        }else if collectionView == trendingCollectionView{
            return 2
        }else {
            return 0
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView == resultCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuestCollectionViewCell", for: indexPath) as? QuestCollectionViewCell else {
                print("ㄴㄴㄴㄴㄴ")
                return UICollectionViewCell()
               
                
            }
            
            print("ㅇㅇㅇㅇㅇ")
            let meeting = meetings[indexPath.item]
            
            cell.questName.text = meeting.nameforSearch!
            cell.memt.text = meeting.ment!
            
            cell.backgroundColor = UIColor(rgb: 0xFFFFFF)
            
            return cell
        }else if collectionView == trendingCollectionView{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrendingCollectionViewCell", for: indexPath) as? TrendingCollectionViewCell else {
                            print("ㄴㄴㄴㄴㄴ")
                            return UICollectionViewCell()
                           
                            
                        }
                        
                        if indexPath.item == 0 {
                            cell.redImage.image = UIImage(named: "1")
                        }else {
                            cell.redImage.image = UIImage(named: "2")
                        }
                        


            return cell
            
        }else {
            return UICollectionViewCell()
        }
       
    }
    
    
    
}



extension QuestListViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        if collectionView == resultCollectionView {
            
            let storyboard = UIStoryboard(name: "DetailViewController", bundle: nil )
            guard let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
            
            vc.meeting = self.meetings[indexPath.item]
            //미팅값을 보내! 
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
            
            
        }
        
    
//        if collectionView == trendingCollectionView {
//
//            let storyboard = UIStoryboard(name: "DetailViewController", bundle: nil )
//            guard let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
//
////            vc.meeting = self.trendingQuests[indexPath.item]
//
//            present(vc, animated: true, completion: nil)
//
//        }
        
        
        
    }
    
}



extension QuestListViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == resultCollectionView{

            let width = collectionView.bounds.width
            let height : CGFloat = 146

            return CGSize(width: width, height: height)
        }else if collectionView == trendingCollectionView{
            let width = collectionView.bounds.width
            let height : CGFloat = 130
            
            return CGSize(width: width, height: height)

            
        }else {
            return CGSize()
        }
        

    }

}



extension QuestListViewController: UISearchBarDelegate{
    
    private func dismissKeyBoard(){
        searchBar.resignFirstResponder()
    }
    
  
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        //검색 시작
        
        //키보드가 올라와 있을때, 내려가게 처리
        dismissKeyBoard()
        
        //검색어 있는지
        guard let searchTerm = searchBar.text, searchTerm.isEmpty == false else {return}
        
        
        self.meetings = DataManager.shared.searchMeeting(searchTerm)
        self.resultCollectionView.reloadData()
        
        print("--> 검색어 : \(searchTerm)")
        
    
         
    }
    
  
}

extension QuestListViewController {
    @objc private func adjustTrendingCollectionView(noti: Notification) {
        guard let userInfo = noti.userInfo else { return }
        // TODO: 키보드 높이에 따른 인풋뷰 위치 변경
        
        guard let keyboardFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as?  NSValue)?.cgRectValue else {return}
        
        if noti.name == UIResponder.keyboardWillShowNotification{
            trendingLabelTop.constant = -10000
            mozipLabelTop.constant = 0
            
        }else{
            
        }
                
        print("--> Keyboard End Frame : \(keyboardFrame)")
        
    }
}


