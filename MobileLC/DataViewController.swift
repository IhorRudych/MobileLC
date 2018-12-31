//
//  DataViewController.swift
//  MobileLC
//
//  Created by imacX on 12/20/18.
//  Copyright © 2018 imacX. All rights reserved.
//

import Foundation
import UIKit

class DataViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        cell.textLabel?.text = "data"
        cell.detailTextLabel?.text = "MY"
        return cell
    }
    
}
