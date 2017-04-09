//
//  MBViewControllerWithMainTableView.swift
//  The MB Guide
//
//  Created by Martin Zhang on 2017-03-27.
//  Copyright © 2017 Martin Zhang. All rights reserved.
//

import UIKit

class MBViewControllerWithMainTableView: UIViewController, UITableViewDelegate, UITableViewDataSource, UIViewControllerPreviewingDelegate {
    
    @IBOutlet weak var mbTableView: UITableView!
    @IBOutlet weak var navigationBarLeftSettingButton: UIBarButtonItem!
    @IBOutlet weak var sideMenuBlurVisualEffectView: UIVisualEffectView!
    @IBOutlet weak var sideMenuLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var sideMenuCreditsButton: UIButton!
    @IBOutlet weak var sideMenuRateButton: UIButton!
    
    var menuShowing = false
    
    var sideMenuButtonsArray = [UIButton]()
    
    // MARK: Segue Identifier
    let detailSegueID = "presentVehicleDetailViewControllerSegue"
    
    let mbGarage = MBGarage()
    var allMBVehicles: [MBVehicleModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let start = Date()
        
        self.allMBVehicles = mbGarage.allMBVehicles()
        
        self.mbTableView.delegate = self
        self.mbTableView.dataSource = self
        
        self.mbTableView.backgroundColor = UIColor.black
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont(name: "Bodoni 72 Smallcaps", size: 24)!]
        
        // Adding side menu UIButtons to array
        sideMenuButtonsArray = [sideMenuCreditsButton, sideMenuRateButton]

        self.sideMenuLeadingConstraint.constant = -170
        
        configureSideMenuButtonsLayout(buttons: sideMenuButtonsArray)
        
        // MARK: - 3D TOUCH  (checking user device force touch capability)
        if (traitCollection.forceTouchCapability == .available) {
            
            // head scratching error encountered:
            // I DIDN'T REALIZE THAT MY PREVIOUS VC FILE WAS FOR A UITABLEVIEWCONTROLLER INSTEAD OF A NORMAL VC; I FORGOT TO CHANGE THE SOURCEVIEW OF PREVIEWING TO THE TABLE VIEW INSTEAD OF THE MAIN VIEW
            registerForPreviewing(with: self, sourceView: self.mbTableView)
        }
        /////////////////////<<<<<<<<<<>>>>>>>>>>>>
        let end = Date()
        print("Time elapsed: \(end.timeIntervalSince(start))")
    }
    
    // Placement needs to be re-arranged
    func configureSideMenuButtonsLayout(buttons: [UIButton]) -> Void {
        for n in 0..<sideMenuButtonsArray.count {
            let button = sideMenuButtonsArray[n]
            button.layer.cornerRadius = 5.0
            button.layer.shadowOpacity = 1.0
            button.layer.shadowRadius = 3.0
            button.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        }
    }
    
    // 3D Touch: Peek
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        if menuShowing {
            dismissSideMenu()
        }
        menuShowing = false
        
        guard let indexPath = self.mbTableView.indexPathForRow(at: location) else {
            return nil
        }
        print(self.allMBVehicles[indexPath.row])
        
        guard let cell = self.mbTableView.cellForRow(at: indexPath) as? MBMainTableViewCell else {
            return nil
        }
        
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "MBVehicleDetailViewController") as? MBVehicleDetailViewController else {
            return nil
        }
        
        print("\(cell.cellVehicleTitleLabel.text)")
        detailVC.vehicleDetailTitleText = cell.cellVehicleTitleLabel.text!
        
        let detailImage = UIImage(named: cell.cellVehicleTitleLabel.text! + "_Detail")
        if detailImage == nil {
            detailVC.vehicleDetailImageName = cell.cellVehicleTitleLabel.text!
        } else {
            detailVC.vehicleDetailImageName = cell.cellVehicleTitleLabel.text! + "_Detail"
        }
        
        detailVC.preferredContentSize = CGSize(width: 0.0, height: 490)
        
        previewingContext.sourceRect = cell.frame
        
        return detailVC
    }
    
    // 3D Touch:Pop
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        show(viewControllerToCommit, sender: self)
        
        if menuShowing {
            dismissSideMenu()
        }
        menuShowing = false
    }
    
    // MARK: - TableView Delegate & DataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allMBVehicles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.mbTableView.dequeueReusableCell(withIdentifier: "mbCell", for: indexPath) as? MBMainTableViewCell
        
        let cellBGView = UIView()
        cellBGView.backgroundColor = UIColor.darkGray
        
        let theMB = self.allMBVehicles[indexPath.row]
        
        cell?.cellVehicleTitleLabel.text = theMB.vehicleName
        cell?.cellImageView.image = UIImage(named: theMB.vehicleName)
        cell?.selectedBackgroundView = cellBGView
        
        // Adding AMG badge onto AMG vehicle cell
        if theMB.isAMGVehicle == true {
            cell?.cellAMGLogoView.image = UIImage(named: "Mercedes-AMG Logo")
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: detailSegueID, sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
        
        if menuShowing {
            dismissSideMenu()
        }
        menuShowing = false
    }
    
    @IBAction func settingsButtonPressed(_ sender: Any) {
        if menuShowing != false {
            sideMenuLeadingConstraint.constant = -170
            
            dismissSideMenu()
        } else {
            self.sideMenuLeadingConstraint.constant = 0
            
            // Animating sliding menu
            UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 2.0, initialSpringVelocity: 20.0, options: .curveEaseInOut, animations: {
                self.view.layoutIfNeeded()
                self.navigationBarLeftSettingButton.image = UIImage(named: "Cancel")
            }, completion: nil)
        }
        menuShowing = !menuShowing
    }
    
    func dismissSideMenu() {
        sideMenuLeadingConstraint.constant = -170
        
        UIView.animate(withDuration: 0.7, delay: 0.0, usingSpringWithDamping: 2.0, initialSpringVelocity: 20.0, options: .curveEaseInOut, animations: {
            self.view.layoutIfNeeded()
            self.navigationBarLeftSettingButton.image = UIImage(named: "Settings")
        }, completion: nil)
    }
    
    // func animateSideMenu(menuInOut inOut: Bool) {
        
    // }
    

    @IBAction func creditsSideMenuButtonTouched(_ sender: Any) {
        
    }

    @IBAction func creditsSideMenuButtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func rateSideMenuButtonTouched(_ sender: Any) {
        self.sideMenuRateButton.layer.shadowRadius = 1.0
        UIView.animate(withDuration: 0.15) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func rateSideMenuButtonPressed(_ sender: Any) {
        self.sideMenuRateButton.layer.shadowRadius = 3.0
        UIView.animate(withDuration: 0.15) {
            self.view.layoutIfNeeded()
        }
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == detailSegueID {
            let destVC = segue.destination as! MBVehicleDetailViewController
            if let indexPath = self.mbTableView.indexPathForSelectedRow {
                let selectedMB = allMBVehicles[indexPath.row]
                
                destVC.selectedVehicle = selectedMB
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
