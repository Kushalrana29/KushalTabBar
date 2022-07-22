//
//  OrderCell.swift
//  TabBarDemo
//
//  Created by Kushal Rana on 22/07/22.
//

import UIKit

class OrderCell: UITableViewCell {
    
    
    @IBOutlet weak var statusImageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var statusDateLabel: UILabel!
    
    @IBOutlet weak var bgContentView: UIView!
    
    
//    @IBOutlet weak var bgView: OrderCell!
    
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemBrandName: UILabel!
    @IBOutlet weak var itemName: UILabel!
    
    @IBOutlet weak var itemSize: UILabel!
    
    @IBOutlet weak var boughtLabel: UILabel!
    
    @IBOutlet weak var addProfileBtn: UIButton!
    @IBOutlet weak var customerNameBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        statusImageView.layer.cornerRadius = 25
        bgContentView.layer.cornerRadius = 10
        itemImageView.layer.cornerRadius = 8
        
        addProfileBtn.layer.cornerRadius = 20
        addProfileBtn.layer.borderWidth = 1
        addProfileBtn.layer.borderColor = UIColor.lightGray.cgColor
        
        customerNameBtn.layer.cornerRadius = 20
        customerNameBtn.layer.borderWidth = 1
        customerNameBtn.layer.borderColor = UIColor.lightGray.cgColor


    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
