//
//  SendController.swift
//  UiTetsTable
//
//  Created by sang on 17/10/1444 AH.
//

import UIKit



class SendController: UIViewController {
    var names = ["IO"]

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self

       
    }
    

  

}


extension SendController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("UI")
    }
    
    
}
extension SendController : UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
          
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
      
    }
    
}
