//
//  MyQuestListViewController.swift
//  youngminhaewireFrame
//
//  Created by 이민섭 on 2022/08/20.
//

import UIKit

class MyQuestListViewController: UIViewController {

    @IBOutlet weak var myQuestListCollectionView: UICollectionView!
    
    var myQuests : [Meeting] = []
    
    @IBAction func tapped(_ sender: Any) {
        
        myQuests = DataManager.shared.myMeetings
        myQuestListCollectionView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myQuestListCollectionView.delegate = self
        myQuestListCollectionView.dataSource = self
        myQuestListCollectionView.register(MyQuestCollectionViewCell.self, forCellWithReuseIdentifier: "MyQuestCollectionViewCell")
        
    
        
        // Do any additional setup after loading the view.
        myQuestListCollectionView.backgroundColor = UIColor(rgb: 0xF8F8FB)
        self.view.backgroundColor = UIColor(rgb: 0xFFFFFF)
        
        myQuests = DataManager.shared.myMeetings
        
        
    }
    
    

}


extension MyQuestListViewController :UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myQuests.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyQuestCollectionViewCell", for: indexPath) as? MyQuestCollectionViewCell else {
            print("ㄴㄴㄴㄴㄴ")
            return UICollectionViewCell()
           
            
        }
        
        
        let myQuest = myQuests[indexPath.item]
        
        cell.questName.text = myQuest.nameforSearch
        cell.memt.text = myQuest.duration
        cell.member.text = "\(myQuest.members.count)명"
        cell.position.text = myQuest.myposition
        cell.progression.text = String(myQuest.progression!)
        
        
        return cell
        
    }
    
}



extension MyQuestListViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        

        let storyboard = UIStoryboard(name: "MyQuestDetailViewController", bundle: nil )
           guard let vc = storyboard.instantiateViewController(withIdentifier: "MyQuestDetailViewController") as? MyQuestDetailViewController else { return }
        
        
        present(vc, animated: true, completion: nil)
        
        
    }
    
}



extension MyQuestListViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        

        let width : CGFloat = collectionView.bounds.width
        let height : CGFloat = 280

        return CGSize(width: width, height: height)
        
    }

}
