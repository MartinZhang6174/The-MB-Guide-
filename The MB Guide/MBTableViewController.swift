//
//  MBTableViewController.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2016-12-20.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

import UIKit

class MBTableViewController: UITableViewController, UIViewControllerPreviewingDelegate {
    
    // MARK: Segue Identifier
    let detailSegueID = "presentVehicleDetailViewControllerSegue"
    
    // Defining all Mercedes vehicles here
    var allMBVehicles: [MBVehicleModel] {
        
        // C klass
        let cKlass63SSedan = c63ssedan()
        let cKlass63SCoupe = c63scoupe()
        let cKlass43Sedan = c43sedan()
        let cKlass43Coupe = c43coupe()
        let cKlass43Cab = c43cabriolet()
        let cKlass63SCab = c63scabriolet()
        
        // GT klass
        let gtKlassCoupe = gt()
        let gtKlassSCoupe = gts()
        let gtKlassRCoupe = gtr()
        let gtKlassCRoadster = gtc()
        
        return [cKlass63SSedan,
                cKlass63SCoupe,
                cKlass43Sedan,
                cKlass43Coupe,
                cKlass43Cab,
                cKlass63SCab,
                gtKlassCoupe,
                gtKlassSCoupe,
                gtKlassRCoupe,
                gtKlassCRoadster]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.tableView.backgroundColor = UIColor.black
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont(name: "Bodoni 72 Smallcaps", size: 24)!]
        
        
        // MARK: 3D TOUCH
        if (traitCollection.forceTouchCapability == .available) {
            registerForPreviewing(with: self, sourceView: view)
        }
    }
    
    // 3D Touch: Peek
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        guard let indexPath = tableView.indexPathForRow(at: location) else {
            return nil
        }
        
        guard let cell = tableView.cellForRow(at: indexPath) as? MBTableViewCell else {
            return nil
        }
        
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "MBVehicleDetailViewController") as? MBVehicleDetailViewController else {
            return nil
        }
        
        detailVC.vehicleDetailTitleText = cell.vehicleNameLabel.text!
        let detailImage = UIImage(named: cell.vehicleNameLabel.text! + "_Detail")
        if detailImage == nil {
            detailVC.vehicleDetailImageName = cell.vehicleNameLabel.text!
        } else {
            detailVC.vehicleDetailImageName = cell.vehicleNameLabel.text! + "_Detail"
        }
        
        detailVC.preferredContentSize = CGSize(width: 0.0, height: 450)
        
        previewingContext.sourceRect = cell.frame
        
        return detailVC
    }
    
    // 3D Touch:Pop
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        
        show(viewControllerToCommit, sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.allMBVehicles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mBCell", for: indexPath) as? MBTableViewCell
        
        let cellBGView = UIView()
        cellBGView.backgroundColor = UIColor.darkGray
        
        let theMB = self.allMBVehicles[indexPath.row]

        cell?.vehicleNameLabel.text = theMB.vehicleName
        cell?.vehicleImageView.image = UIImage(named: theMB.vehicleName)
        cell?.selectedBackgroundView = cellBGView
        
        // Adding AMG badge onto vehicle image
        if theMB.isAMGVehicle == true {
            let amgImageView = UIImageView(image: #imageLiteral(resourceName: "Mercedes-AMG Logo"))
            amgImageView.frame = CGRect(x: 20, y: 20, width: (cell?.vehicleImageView.frame.width)! * 0.270195, height: (cell?.vehicleImageView.frame.height)! * 0.046341)
            cell?.vehicleImageView.addSubview(amgImageView)
        }
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Perform segue to destination view controller
        self.performSegue(withIdentifier: detailSegueID, sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Pass the selected object to the new view controller.
        
        if segue.identifier == detailSegueID {
            let destVC = segue.destination as! MBVehicleDetailViewController
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let selectedMB = allMBVehicles[indexPath.row]
                
                destVC.vehicleDetailTitleText = selectedMB.vehicleName
                if UIImage(named: selectedMB.vehicleName + "_Detail") == nil {
                    destVC.vehicleDetailImageName = selectedMB.vehicleName
                } else {
                    destVC.vehicleDetailImageName = "\(selectedMB.vehicleName)_Detail"
                }
            }
        }
    }
    
    
}
