import UIKit

class VCGameMenu: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startButt(_ sender: UIButton) {
        let vc = CardSB.instance() as! CardSB
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func StatButt(_ sender: UIButton) {
        let vc = StatSB.instance() as! StatSB
        navigationController?.pushViewController(vc, animated: true)
    }
}
