//
//  ViewController.swift
//  MusicPlayer
//
//  Created by DDUKK on 25/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
@IBOutlet weak var table: UITableView!
//    let movies = ["abrahaminte-santhathikal", "mayanadhi", "athiran", "joseph"]
//    let music = ["abrahaminte-santhathikal","mayanadhi","athiran","joseph"]
var count = 0
var songs = Detail()
var cellSpacing : CGFloat = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        
        let nib = UINib(nibName: "TableViewCell1", bundle: nil)
        table.register(nib, forCellReuseIdentifier: "cell1")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = table.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell1

        cell.label1.text = songs.detail[count].lblCell
        cell.image1.image = UIImage(named: songs.detail[count].imgCell)

        if count<4{
            count = count + 1
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("The row number is:",indexPath.row)
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "view1") as! ViewController1
        print("clicked")
//        vc.img1 = songs.detail[indexPath.row].lblCell
//        vc.lbl1 = songs.detail[indexPath.row].imgCell
//        vc.song = songs.detail[indexPath.row].songCell
        present(vc,animated: true)
        
    }

    


}

