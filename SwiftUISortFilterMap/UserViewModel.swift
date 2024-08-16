//
//  UserViewModel.swift
//  SwiftUISortFilterMap
//
//  Created by M.Ömer Ünver on 16.08.2024.
//

import Foundation

class UserViewModel : ObservableObject {
    @Published var dataArray : [UserModel] = []
    @Published var filteredArray : [UserModel] = []
    @Published var mappedArray : [String] = []
    init(){
        getUser()
        updateFilteredArray()
    }
    func updateFilteredArray(){
//        SORT
        /*filteredArray = dataArray.sorted(by: {$0.points < $1.points}) // first
        
        filteredArray = dataArray.sorted(by: { user1, user2 -> Bool in // second
            return user1.points > user2.points
        })*/
//        FİLTER
        /*        filteredArray = dataArray.filter({ user -> Bool in
            return user.points > 10
        })
        filteredArray = dataArray.filter({ user -> Bool in
            return user.name.contains("i")
        })
        filteredArray = dataArray.filter({ user -> Bool in
            return user.isVerified
        })
        filteredArray = dataArray.filter({$0.isVerified})
        */
//        MAP
//              mappedArray = dataArray.map({ user -> String in
//            return user.name
////        })
        mappedArray = dataArray.map({$0.name!})
         
        mappedArray = dataArray.compactMap({ user -> String? in
            return user.name
        })

//        mappedArray = dataArray
//            .sorted(by: {$0.points > $1.points})
//            .filter({$0.isVerified})
//            .compactMap({$0.name})
        
    }
    func getUser(){
        
        let user1 = UserModel(name: "Nick", points: 5, isVerified: true)
        let user2 = UserModel(name: nil, points: 6, isVerified: false)
        let user3 = UserModel(name: "Joe", points: 20, isVerified: false)
        let user4 = UserModel(name: "Emily", points: 30, isVerified: false)
        let user5 = UserModel(name: nil, points: 14, isVerified: true)
        let user6 = UserModel(name: "Jason", points: 22, isVerified: true)
        let user7 = UserModel(name: "Harry", points: 35, isVerified: false)
        let user8 = UserModel(name: nil, points: 27, isVerified: true)
        let user9 = UserModel(name: "Steve", points: 9, isVerified: false)
        let user10 = UserModel(name: "Amanda", points: 31, isVerified: true)
        
        self.dataArray.append(contentsOf: [
                                           user1,
                                           user2,
                                           user3,
                                           user4,
                                           user5,
                                           user6,
                                           user7,
                                           user8,
                                           user9,
                                           user10
                                          ])
        
    }
}
