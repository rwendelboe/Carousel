//
//  ViewController.swift
//  Carousel
//
//  Created by Roman Wendelboe on 1/30/16.
//  Copyright © 2016 Roman Wendelboe. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    //@IBOutlet var collectionLabel: UILabel!
    
    var randomNames = ["Shoes", "Men", "Cloths", "Poster", "Roshe", "Outfits", "Logo", "Wallpaper", "Socks", "Shorts", "Sweatshir", "Sweats", "Quuotes", "Soccer", "Sneakers", "Tank", "Cleats", "Socks"]
    var cat1 = ["fdvnekl", "vekrlnverk", "fenverkn"]
    var randomImages = [UIImage(named: "r1")!, UIImage(named: "r2")!, UIImage(named: "r3")!, UIImage(named: "r4")!, UIImage(named: "r5")!, UIImage(named: "r6")!, UIImage(named: "r1")!, UIImage(named: "r2")!, UIImage(named: "r3")!, UIImage(named: "r4")!, UIImage(named: "r5")!, UIImage(named: "r6")!, UIImage(named: "r1")!, UIImage(named: "r2")!, UIImage(named: "r3")!, UIImage(named: "r4")!, UIImage(named: "r5")!, UIImage(named: "r6")! ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension HomeViewController: UICollectionViewDataSource{
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return randomNames.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as! myCollectionViewCell
        
        cell.collectionLabel.text = self.randomNames[indexPath.item]
        cell.colectionImage.image = self.randomImages[indexPath.item]
        cell.layer.cornerRadius = 6;

        
        return cell
    }
}

extension HomeViewController: UITableViewDataSource{
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        return cell
    }
}

