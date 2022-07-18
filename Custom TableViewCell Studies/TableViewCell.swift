//
//  TableViewCell.swift
//  Custom TableViewCell Studies
//
//  Created by Burak Yılmaz on 18.07.2022.
//

import UIKit

protocol ButtonClicked {
    
    func clicked(indexPath: IndexPath)
}



class TableViewCell: UITableViewCell {
    
    
    var clickProtocol: ButtonClicked?
    var indexPath: IndexPath?
    
    
    
    @IBOutlet var personLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        clickProtocol?.clicked(indexPath: indexPath!)
    }
    
}
