//
//  OrderViewController.swift
//  TabBarDemo
//
//  Created by Kushal Rana on 22/07/22.
//

import UIKit

class OrderViewController: UIViewController {
    
    @IBOutlet weak var orderTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    

}



extension OrderViewController : UITableViewDelegate,UITableViewDataSource {
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 295
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell_ID", for: indexPath) as! OrderCell
        
       
        
        return cell
    }

}



