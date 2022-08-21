//
//  EnrollTestViewController2.swift
//  youngminhaewireFrame
//
//  Created by 이민섭 on 2022/08/21.
//

import UIKit

class EnrollTestViewController2: UIViewController {

    var meeting : Meeting?
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
        
        self.dismiss(animated: true)
        
        
    }
        
    
    @IBAction func submmitTapped(_ sender: Any) {
        
        DataManager.shared.enrolltheMeeting(meeting!)
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
