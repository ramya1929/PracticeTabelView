//
//  ViewController.swift
//  PracticeTabelView
//
//  Created by Rameya on 02/05/24.
//

import UIKit



class ViewController: UIViewController{
    @IBOutlet weak var NamesTabelView: UITableView!
    var family = ["rahul","ramya","preethi","akash","ramanamma"]
    var relatives = ["madhu","mohan","navya","pavan","lasya"]

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabelView()
    
    }
    func setUpTabelView(){
        NamesTabelView.dataSource = self
        NamesTabelView.delegate = self
    }
}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return family.count
        }else if section == 1{
            return relatives.count
        }
        return 0
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = NamesTabelView.dequeueReusableCell(withIdentifier: "FirstTabelViewCell", for: indexPath) as! FirstTabelViewCell
            cell.familyLabel.text = family[indexPath.row]
            cell.relativesLabel.text = relatives[indexPath.row]
            return cell
        }
         return UITableViewCell()
    }
    
    
}

