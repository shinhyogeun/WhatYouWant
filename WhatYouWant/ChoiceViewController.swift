//
//  ChoiceViewController.swift
//  WhatYouWant
//
//  Created by 신효근 on 2020/05/26.
//  Copyright © 2020 신효근. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.dataSource = self
        self.mainTableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "cell1")
        self.mainTableView.rowHeight = 100
        self.mainTableView.estimatedRowHeight = UITableView.automaticDimension
    }
    
}

extension ChoiceViewController : UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! MainTableViewCell
        if indexPath.row == 1 {
            cell.sd.text = String("skdslkdlsdklskdlskdskdsdsdsdsdsdsdsdsdsdsdsdsdsdskdslkdlsdklskdlskdskdsdsdsdsdsdsdsdsdsdsdsdsdsdskdslkdlsdklskdlskdskdsdsdsdsdsdsdsdsdsdsdsdsdsdskdslkdlsdklskdlskdskdsdsdsdsdsdsdsdsdsdsdsdsdsd")
        } else {
            cell.sd.text = String("this")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return UITableView.automaticDimension
    }
    
}
