//
//  MethodEditorController.swift
//  MobileLC
//
//  Created by Ihor Rudych on 12/21/18.
//  Copyright © 2018 imacX. All rights reserved.
//

import Foundation
import UIKit


class MethodEditorController:UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        cell.textLabel?.text = "data"
        cell.detailTextLabel?.text = "MY"
        return cell
    }
    
}
