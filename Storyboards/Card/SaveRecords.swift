//
//  SaveRecords.swift
//  Storyboards
//
//  Created by Евгений Юров on 20.04.2019.
//  Copyright © 2019 Максим Витовицкий. All rights reserved.
//

import Foundation

class SaveRecords{
    struct RecStruct{
        var countClick:Int
        var starttime:String
        var gametime:Int
    }

    var Recs = [RecStruct]()
    
    func addRec1(clicks:Int, timeStartGame:String, timeEndGame:Int){
        //let newRec = RecStruct.init(countClick: clicks, starttime: timeStartGame, gametime: timeLengthGame)
    //    Recs.append(newRec)
        let defaults = UserDefaults.standard
        let oldArray = defaults.stringArray(forKey: "Stat") ?? [String]()
        
        let newArray = oldArray + [String(clicks), timeStartGame, String(timeEndGame)]
        
        defaults.set(newArray, forKey: "Stat")
    }
    
    func getStat()->[String]{
        let defaults = UserDefaults.standard
        let myarray = defaults.stringArray(forKey: "Stat") ?? [String]()
        return myarray
    }
    func resetStat(){
        let defaults = UserDefaults.standard
        
        defaults.set([], forKey: "Stat")
    }
}
