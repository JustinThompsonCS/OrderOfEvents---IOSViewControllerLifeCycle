//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Thompson, Justin D on 1/30/20.
//  Copyright © 2020 Thompson, Justin D. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {
    @IBOutlet var label: UILabel!
    var eventNumber = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel(eventText: "viewDidLoad")
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        updateLabel(eventText: "viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        updateLabel(eventText: "viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        updateLabel(eventText: "viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        updateLabel(eventText: "viewDidDisappear")
    }
    func updateLabel(eventText: String){
        if let existingText = label.text{
            label.text = "\(existingText)\nEvent number \(eventNumber) was \(eventText)"
            eventNumber += 1;
        }
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
