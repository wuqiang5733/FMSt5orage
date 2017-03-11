//
//  ViewController.swift
//  FMStorage
//
//  Created by WuQiang on 2017/3/11.
//  Copyright © 2017年 WuQiang. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textEditor: UITextView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaultValues = UserDefaults.standard
        if let color = defaultValues.object(forKey: "color") as? Int {
            let colorList = [UIColor.black, UIColor.red, UIColor.lightGray]
            textEditor.textColor = colorList[color]
        }
        if let editable = defaultValues.object(forKey: "editable") as? Bool {
            textEditor.isEditable = editable
        }
        if let correction = defaultValues.object(forKey: "correction") as? Bool {
            if correction {
                textEditor.spellCheckingType = .yes
            } else {
                textEditor.spellCheckingType = .no
            }
        }
    }
}
