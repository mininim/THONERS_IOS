//
//  QuestDataManager.swift
//  youngminhaewireFrame
//
//  Created by 이민섭 on 2022/08/20.
//

import Foundation
import UIKit

struct Quest {
    
    var name : String
  
    var equipment : String
    
    
}


class QuestDataManager {
    
    static let shared : QuestDataManager = QuestDataManager()
    
    var Quests : [Quest] = [Quest1, Quest2, Quest3 , Quest4, Quest5]
    
    
    func search(_ searchTerm : String) -> [Quest] {
        
        let retrunQeust :  [Quest] = [Quest1, Quest2]
        return retrunQeust
        
    }
    
}

let Quest1 : Quest = Quest(name: "일상 퀘스트", equipment: "활")
let Quest2 : Quest = Quest(name: "스포츠 퀘스트", equipment: "검")
let Quest3 : Quest = Quest(name: "일상 퀘스트", equipment: "총")
let Quest4 : Quest = Quest(name: "사이드 프로젝트", equipment: "균")
let Quest5 : Quest = Quest(name: "사이드 프로젝트", equipment: "쇠")


struct member {
    
    var name : String
    var image : UIImage
    
    
}

struct MyQuest{
    
    var name : String
    var progress : String
    var position : String
    var duration : String
    var members : [member]
    
    
}

class MyQuestDataManager {
    
    static let shared : MyQuestDataManager = MyQuestDataManager()
    var MyQuests : [MyQuest] = [MyQuest1, MyQuest2]
    var attendingQuest : [Quest] = []
    
    
    func addAttendingQuest(_ newQuest : Quest)  {
        
        attendingQuest.append(newQuest)
        
    }
    
    func addMyQuest(_ newQuest : MyQuest)  {
        
        MyQuests.append(newQuest)
        
    }
    
}



let minsop : member = member(name: "이민섭", image: UIImage(named: "minsoptest")! )
let haelim : member = member(name: "김혜림", image: UIImage(named: "minsoptest")! )

let MyQuest1 : MyQuest = MyQuest(name: "노마드 강의 듣고 여행 웹 개발하기", progress: "67%", position: "Frontend- IOS", duration: "8/30 ~ 9/16", members: [minsop, haelim])

let MyQuest2 : MyQuest = MyQuest(name: "넷플릭스 클론코딩 하고 영상앱 개발하기", progress: "50%", position: "Frontend-Android", duration: "9/1 ~ 9/16", members: [minsop, haelim])



struct Meeting {
    
    var meetingID : Int?
    var name : String?
    var nameforSearch : String?
    var ment : String?
    
    var submissions : String?
    var submissionDate : String?
    
    var duration : String?
    
    var maxmembers : Int?
    
    
    var members : [member] = []
    var keywords : [String] = []
    var location : String?
    var goal : String?
    var money : String?
    var metoring : String?
    
    var myposition  : String?
    var progression : Int?
    
    var leader : String?
    var introduction : String = "자세한 설명은 생략한다"
}


let 이민섭 : member = member(name: "이민섭", image: UIImage(named: "minsoptest")!)
let 김혜림 : member = member(name: "김혜림", image: UIImage(named: "minsoptest")!)
let 권재영 : member = member(name: "권재영", image: UIImage(named: "minsoptest")!)
let 석주영 : member = member(name: "석주영", image: UIImage(named: "minsoptest")!)
let 윤서영 : member = member(name: "윤서영", image: UIImage(named: "minsoptest")!)


let meeting1 : Meeting = Meeting(meetingID: 1, name: "패캠 IOS 올인원 완강 후 여행앱 만들기",nameforSearch : "패캠 IOS 올인원 완강 후\n여행앱 만들기",  ment: "여행 좋아하는 앱등이 모집", submissions: "패캠 이수증\n사전 질문 3개", submissionDate: "D-5", duration: "9월1일 ~ 9월 10일",maxmembers : 5, members: [ 이민섭, 권재영 ], keywords: ["여행", "IOS", "비기너", "패스트캠퍼스"], location: "온라인-줌", goal: "골프 앱 프로토타입 개발", money: "10000원", metoring: "비기너 맨토링 1회", myposition: "Frontend-IOS", progression: 0, leader: "팀쿡", introduction: "팀쿡이 직접 호스트를 맡는 모임?\n이건 못참아~")

let meeting2 : Meeting = Meeting(meetingID: 2,name: "노마드 트위터 클론하고\n기숙사 커뮤니티 만들기", nameforSearch:"노마드 트위터 클론하고\n기숙사 커뮤니티 만들기", ment: "룸메랑 싸워본 스트릿 리액터 모집", submissions: "노마드 수업 수료증\n기숙사 생활 인증", submissionDate: "D-8", duration: "9월6일 ~ 9월 20일", maxmembers : 4, members: [ 이민섭, 권재영 ], keywords: ["리액트", "대학생", "웹"], location: "오프라인-동작구", goal: "기숙사 웹 서비스 런칭", money: "20000원", metoring: "웹 리드 개발자 매칭 서비스 신청", myposition: "Frontend-React", progression: 0, leader: "나야나노마드", introduction: "지난학기에 싸웠던 룸메이트와 같이 진행합니다\n공짜 싸움구경 시켜드립니다")

let meeting3 : Meeting = Meeting(meetingID: 3,name: "IOS 프로젝트 경험 후 앱스토어 출시하기" , nameforSearch: "IOS 프로젝트 경험 후\n앱스토어 출시하기", ment: "같이 애플 매출액 늘릴 애플주주 모집", submissions: "프로젝트 경험\n사전 질문 3개", submissionDate: "D-10", duration: "9월16일 ~ 9월 30일", maxmembers : 5, members: [ 이민섭, 권재영 ], keywords: ["IOS", "앱", "출시"], location: "오프라인-서울", goal: "앱스토어 출시", money: "30000원", metoring: "개발자 계정 지원 미션 도전", myposition: "Frontend-IOS", progression: 0, leader: "석주영", introduction: "언제까지 거절당할거야?? 이번엔 꼭 애플 스토어 출시 해보작오!!")

let meeting4 : Meeting = Meeting(meetingID: 4, name: "해커톤 수상 후 다음번 해커톤 도전하기",nameforSearch: "해커톤 수상 후\n다음번 해커톤 도전하기", ment: "해커톤 수상자들 모여라", submissions: "해커톤 수상 인증\n사전 질문 3개", submissionDate: "D-15", duration: "9월18일 ~ 9월 28일", members: [ 이민섭, 권재영 ], keywords: ["풀스택", "IOS", "백엔드", "디자이너"], location: "온라인-줌", goal: "골프 앱 프로토타입 개발", money: nil, metoring: nil, myposition: "Frontend-IOS", progression: 0, leader: "영민해", introduction: "나 항해 해커톤 수상자이올시다\n다음번 해커톤 빡세게 준비해볼 팀 구함")

let meeting5 : Meeting = Meeting(meetingID: 5, name : "노마드 트위터 클론 후\n스포츠 커뮤니티 만들기" ,nameforSearch: "노마드 트위터 클론 후\n스포츠 커뮤니티 만들기", ment: "운동 좋아하는 풋싼 개발자", submissions: "운동 인증\n노마드 트위터 클론 인증", submissionDate: "D-10", duration: "9월15일 ~ 9월 25일", members: [ 이민섭, 권재영 ], keywords: ["운동", "스포츠", "리액트", "노마드"], location: "오프라인-부산", goal: "스포츠 커뮤니티 개발", money: "10000원", metoring: "비기너 맨토링 1회", myposition: "Frontend-React", progression: 0, leader: "이민섭", introduction: "웹 개발도 하고 같이 스포츠 취미 공유도 해요! 저는 보드를 좋아합니다~")


let meeting100 : Meeting = Meeting(meetingID: 6, name: "IOS 클론 코딩 프로젝트 후 고려대 항해 해커톤 참여하기",nameforSearch: "IOS 클론 코딩 프로젝트 후\n고려대 항해 해커톤 참여하기", ment: "항해 해커톤 딱대", submissions: "클론 코딩 프로젝트 인증\n질문 3개", submissionDate: "D-15", duration: "9월15일 ~ 9월 25일", members: [ 이민섭, 권재영 ], keywords: ["운동", "스포츠", "리액트", "노마드"], location: "오프라인-청주", goal: "스포츠 커뮤니티 개발", money: "10000원", metoring: "비기너 맨토링 1회", myposition: "Frontend-React", progression: 65, leader: "이민섭")

let meeting101 : Meeting = Meeting(meetingID: 7, name: "클론 앱 3개 완성 후 앱스토어 출시하기",nameforSearch: "클론 앱 3개 완성 후\n 앱스토어 출시하기", ment: "출시가자", submissions: "클론 코딩 프로젝트 인증\n질문 3개", submissionDate: "D-15", duration: "9월15일 ~ 9월 25일", members: [ 이민섭, 권재영 ], keywords: ["운동", "스포츠", "리액트", "노마드"], location: "오프라인-청주", goal: "스포츠 커뮤니티 개발", money: "10000원", metoring: "비기너 맨토링 1회", myposition: "Frontend-IOS", progression: 65, leader: "이민섭")


class DataManager {
    static let shared : DataManager  = DataManager()
    
    var registeredMeeting : [Meeting] = [ meeting1, meeting2, meeting3 , meeting4, meeting5]
    var myMeetings : [Meeting] = []
    
    func enrolltheMeeting(_ registed : Meeting) {
        
        for i in  myMeetings {
            if registed.meetingID == i.meetingID {
                return
            }
        }
        
        myMeetings.append(registed)
    }
    
    
    
    
    func searchMeeting(_ searchTerm : String) -> [Meeting] {
        
        var result : [Meeting] = []
        
        for a in registeredMeeting {
            if a.keywords.contains(searchTerm){
                result.append(a)
            }
        }
        
        return result
    }
    
    
}
