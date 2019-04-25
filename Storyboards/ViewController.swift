import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tablView: UITableView!
    var randomMas:[Int] = []
    let countString = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...countString {
            randomMas.append(Int(arc4random_uniform(9)))
        }
        tablView.delegate = self
        tablView.dataSource = self
    }
}

extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        // print("cell Taped \(indexPath.row)  ")
        
        let vc = SBPopup.instance() as! SBPopup // or whatever it is
        vc.inputText = String(randomMas[indexPath.row])
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return countString
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScoreTableViewCell") as! ScoreTableViewCell
        cell.setup(with: String(randomMas[indexPath.row]))
        return cell
    }
}

