//
//  StatusObserver.swift
//  Img
//
//  Created by Deepanshu Yadav on 21/04/20.
//  Copyright © 2020 Deepanshu Yadav. All rights reserved.
//

import Foundation
import Firebase

class StatusObserver: ObservableObject{
    @Published var statusList = [StatusData]()
    init() {
        let db = Firestore.firestore()
        db.collection("status").addSnapshotListener { (snapshot, err) in
            if err != nil {
                print((err?.localizedDescription)!)
                return
            }
            for i in snapshot!.documentChanges {
                if i.type == .added {
                    let id = i.document.documentID
                    let name = i.document.get("name") as! String
                    let image = i.document.get("image") as! String
                    self.statusList.append(StatusData(id: id, statusUsername: name, statusImage: image))
                }
                if i.type == .removed {
                    let id = i.document.documentID
                    for j in 0..<self.statusList.count{
                        if self.statusList[j].id==id {
                            self.statusList.remove(at: j)
                            return
                        }
                    }
                }
            }
        }
    }
    
}
