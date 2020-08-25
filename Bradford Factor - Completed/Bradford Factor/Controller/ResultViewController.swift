//
//  ResultViewController.swift
//  Bradford Factor
//
//  Created by Muhamed Alkhatib on 25/08/2020.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bFResult: Int=0
    var advise: String=""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bradFordResult.text=String(bFResult)
        
        switch bFResult {
        case 0...25:
            advise="No problem"
            view.backgroundColor=#colorLiteral(red: 0.7834308743, green: 0.9097595811, blue: 0.7245814204, alpha: 1)
            
        case 26...100:
            advise="Employee needs attention"
            view.backgroundColor=#colorLiteral(red: 1, green: 0.9796168208, blue: 0.6882863641, alpha: 1)
            
        case 101...500:
            advise="Employee needs punishment"
            view.backgroundColor=#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
            
        case 501...:
            advise="Employee needs hard punishment"
            view.backgroundColor=#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            
        default:
            advise=""
        }
        
        
        adviseLabel.text=advise
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var bradFordResult: UILabel!
    
    @IBOutlet weak var adviseLabel: UILabel!
    
    @IBAction func calculateAgainPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
}
