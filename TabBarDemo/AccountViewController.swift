//
//  AccountViewController.swift
//  TabBarDemo
//
//  Created by Kushal Rana on 22/07/22.
//

import UIKit

class AccountViewController: UIViewController {

    
    @IBOutlet weak var profileTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileTableView.sectionHeaderHeight = 5.0

        // Do any additional setup after loading the view.
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


extension AccountViewController : UITableViewDelegate, UITableViewDataSource {
    

    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0 {
            return 0
        } else {
            return 5.0
        }
        
    }

   
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            return 270
        } else if indexPath.section == 1 {
            return 100
        } else if indexPath.section == 2 || indexPath.section == 3 {
            return 100
        } else if indexPath.section == 4 {
            return 366
        }
        
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 1
        } else if section == 1 {
            return 6
        } else if section == 2 {
            return 6
        } else if section == 3 {
            return 2
        } else if section == 4 {
            return 1
        }
        
       return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AccountCell_ID", for: indexPath) as! AccountCell
            return cell
        } else if indexPath.section == 1 {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileOrderCell_ID", for: indexPath) as! ProfileOrderCell
            
            if indexPath.row == 2 {
                cell.accessoryType = .detailDisclosureButton
            }
            return cell
        } else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileOrderCellThree_ID", for: indexPath) as! ProfileOrderCellThree
            return cell
        } else if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileOrderCellFourth_ID", for: indexPath) as! ProfileOrderCellFourth
            return cell
        } else if indexPath.section == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HelpDetailsCell_ID", for: indexPath) as! HelpDetailsCell
            return cell
        }
        
    return UITableViewCell()
    }
    
    
}
