//
//  ViewController.swift
//  Imagetest
//
//  Created by saul ulises urias guzmàn on 30/09/16.
//  Copyright © 2016 saul ulises urias guzmàn. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var imageURLs = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Array que guarda las URL de las imagenes
        imageURLs = ["https://d3nevzfk7ii3be.cloudfront.net/igi/ssETA1T5QkArKlMv.medium","https://d3nevzfk7ii3be.cloudfront.net/igi/CtpcI4pqikGonOye.standard","https://d3nevzfk7ii3be.cloudfront.net/igi/MMYJjG1bHVkT3thk.medium","https://d3nevzfk7ii3be.cloudfront.net/igi/1QluZIfJXBuQIVZn.standard","https://d3nevzfk7ii3be.cloudfront.net/igi/W3alvPapsunbOVyq.medium","https://d3nevzfk7ii3be.cloudfront.net/igi/sX5iMoIvYMbCvHoF.standard","https://d3nevzfk7ii3be.cloudfront.net/igi/pdeN2LLSu4KFS5BC.medium","https://d3nevzfk7ii3be.cloudfront.net/igi/MqGZWCWTTRYMR5a5.standard","https://d3nevzfk7ii3be.cloudfront.net/igi/gFRUXfJyxNyTQWJQ.medium","https://d3nevzfk7ii3be.cloudfront.net/igi/ipv5OG2NckM3DfE2.standard"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        let imageView = cell?.viewWithTag(1) as! UIImageView
        
        //Cargamos las imagenes directamente desde el URL
       // imageView.sd_setImage(with: URL(string: imageURLs[indexPath.row]))
        
        
        //Cargamos las imagenes, tenemos una imagen por default en caso de necesitarla, y tenemos opciones
        imageView.sd_setImage(with: URL(string: imageURLs[indexPath.row]), placeholderImage: #imageLiteral(resourceName: "connecting"), options: [.continueInBackground, .progressiveDownload])
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageURLs.count
    }

}

