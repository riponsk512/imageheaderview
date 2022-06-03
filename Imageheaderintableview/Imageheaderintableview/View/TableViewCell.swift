//
//  TableViewCell.swift
//  Imageheaderintableview
//
//  Created by Ripon sk on 03/06/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var txt: UILabel!
    @IBOutlet weak var imgview: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
