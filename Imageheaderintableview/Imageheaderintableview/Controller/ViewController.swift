//
//  ViewController.swift
//  Imageheaderintableview
//
//  Created by Ripon sk on 03/06/22.
//

import UIKit

class ViewController: UIViewController {
    var x = Imagehelper.shared.imgarr
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let headerview = UIView(frame: CGRect(x: 0, y: 0, width: table.frame.width, height: 150))
        let imgview = UIImageView(frame: CGRect(x: 0, y: 0, width: self.table.frame.width, height: 150))
        imgview.image = UIImage(named: "moviespic")
        headerview.addSubview(imgview)
        self.table.tableHeaderView = headerview
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return x.count;
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        cell?.txt.text = x[indexPath.row]
        cell?.imgview.image = UIImage(named: x[indexPath.row].description)
        cell?.imgview.layer.cornerRadius = 30
        return cell!
    }
   
    
}
