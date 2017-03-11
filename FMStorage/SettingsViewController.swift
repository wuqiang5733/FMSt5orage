//
//  SettingsViewController.swift
//  FMStorage
//
//  Created by WuQiang on 2017/3/11.
//  Copyright © 2017年 WuQiang. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    @IBOutlet weak var controlColors: UISegmentedControl!
    @IBOutlet weak var controlEditable: UISwitch!
    @IBOutlet weak var controlCorrection: UISwitch!
    var defaultValues: UserDefaults!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaultValues = UserDefaults.standard
        if let color = defaultValues.object(forKey: "color") as? Int {
            controlColors.selectedSegmentIndex = color
        }
        if let editable = defaultValues.object(forKey: "editable") as? Bool {
            controlEditable.isOn = editable
        }
        if let correction = defaultValues.object(forKey: "correction") as? Bool {
            controlCorrection.isOn = correction
        }
    }
    @IBAction func saveColor(_ sender: UISegmentedControl) {
        let current = controlColors.selectedSegmentIndex
        defaultValues.set(current, forKey: "color")
         print("WQ_saveColorExecuted")
    }
    @IBAction func saveEditable(_ sender: UISwitch) {
        let current = controlEditable.isOn
        defaultValues.set(current, forKey: "editable")
        print("WQ_saveEditableExecuted")
    }
    @IBAction func saveCorrection(_ sender: UISwitch) {
        let current = controlCorrection.isOn
        defaultValues.set(current, forKey: "correction")
         print("WQ_saveCorrectionExecuted")
    }
}
