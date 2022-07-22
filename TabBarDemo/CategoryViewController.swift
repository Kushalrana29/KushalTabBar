//
//  CategoryViewController.swift
//  TabBarDemo
//
//  Created by Kushal Rana on 22/07/22.
//

import UIKit

class CategoryViewController: UIViewController {

    
    @IBOutlet weak var categorytableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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


extension CategoryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 155
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell_ID", for: indexPath) as! CategoryCell
        
        cell.categoryImageView.backgroundColor = random()
        
        return cell
    }
    
    
    @objc  func random() -> UIColor {
            return UIColor(
                red:   .random(in: 0.5...1),
                green: .random(in: 0.5...1),
                blue:  .random(in: 0.5...1),
                alpha: 1.0
            )
        }
    
    
}


