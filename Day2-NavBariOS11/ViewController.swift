//
//  ViewController.swift
//  Day2-NavBariOS11
//
//  Created by Prashant Gaikwad on 3/6/18.
//  Copyright © 2018 Left Right Mind. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    tableView.estimatedRowHeight = UITableViewAutomaticDimension
    tableView.rowHeight = 101
    
    setupNavbar()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func setupNavbar()  {
    navigationController?.navigationBar.prefersLargeTitles = true
    
    let searchController = UISearchController(searchResultsController: nil)
    navigationItem.searchController = searchController
    navigationItem.hidesSearchBarWhenScrolling = true
  }

}

extension ViewController : UITableViewDelegate,UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    return cell
  }
  
}

