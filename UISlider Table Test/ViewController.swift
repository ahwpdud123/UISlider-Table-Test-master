//
//  ViewController.swift
//  UISlider Table Test
//
//  Created by D7702_10 on 2018. 5. 15..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let identifier = "RE"
        let cell = myTable.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel?.text = String(val + indexPath.row)
        
        return cell
    }
    
    @IBOutlet weak var myslide: UISlider!
    @IBOutlet weak var mylbl: UILabel!
    @IBOutlet weak var myTable: UITableView!
    
    var val = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
        
    }
    
    @IBAction func slide(_ sender: Any) {
      
        // TableView의 데이터를 새로 뿌려줌
        myTable.reloadData()
        
        
     print(Int(myslide.value))
     val = Int(myslide.value)
        
     print("움직")
     mylbl.text = String(val)
        
    }
    
}

