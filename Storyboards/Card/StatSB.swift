import UIKit

class StatSB :UIViewController,UITableViewDataSource{
    
    struct scoresSort{
        var countClick:String
        var timeStart:String
        var timeGame:String
    }
    var scores = [scoresSort]()
    
    let tableId = "tableId"
    var scoresMas = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getMas()
        convertMas()
    }
    
    func convertMas(){
        for i in 0..<scoresMas.count / 3 { // данные хранятся триадами, вытаскиваем в цикле
            let countClick = scoresMas[i * 3]
            let startTime = scoresMas[i * 3 + 1]
            let timeGame = scoresMas[i * 3 + 2]
            
            let sc = scoresSort.init(countClick: countClick, timeStart: startTime, timeGame: timeGame)
            scores.append(sc)
        }
        scores.sort(by: {$0.countClick<$1.countClick}) // сортируем полученные данные
    }
    
    func getMas(){
        let f = SaveRecords()
        scoresMas = f.getStat()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCell(withIdentifier: tableId)
        if (cell == nil) {
            cell = UITableViewCell(
                style: UITableViewCell.CellStyle.default,
                reuseIdentifier: tableId)
        }
        cell?.textLabel?.adjustsFontSizeToFitWidth = true
        cell?.textLabel?.text = "Клики \(scores[indexPath.row].countClick) Старт \(scores[indexPath.row].timeStart) Время \(scores[indexPath.row].timeGame)"
        return cell!
    }
}
