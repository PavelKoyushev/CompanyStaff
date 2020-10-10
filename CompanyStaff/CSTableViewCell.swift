//
//  CSTableViewCell.swift
//  CompanyStaff
//
//  Created by Pavel Koyushev on 10.10.2020.
//

import UIKit

class CSTableViewCell: UITableViewCell {
    @IBOutlet weak var fullNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
