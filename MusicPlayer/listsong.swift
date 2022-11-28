//
//  listsong.swift
//  MusicPlayer
//
//  Created by DDUKK on 03/11/22.
//

import UIKit

class listsong: UITableViewController {

    
    var count = 0
    var songs = Detail()
    var cellSpacing : CGFloat = 6
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: "TableViewCell1", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell1")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.3
    }
    

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell1

        cell.label1.text = songs.detail[count].lblCell
        cell.image1.image = UIImage(named: songs.detail[count].imgCell)

        if count<4{
            count = count + 1
        }

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "view1") as! ViewController1
        print("clicked")
        vc.img1 = songs.detail[indexPath.row].lblCell
        vc.lbl1 = songs.detail[indexPath.row].imgCell
        vc.song = songs.detail[indexPath.row].songCell
        present(vc,animated: true)
    }
    

}
