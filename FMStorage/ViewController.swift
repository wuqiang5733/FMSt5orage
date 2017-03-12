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
        let color = defaultValues.integer(forKey: "color")
        let colorList = [UIColor.black, UIColor.gray, UIColor.lightGray]
        textEditor.textColor = colorList[color]
        textEditor.isEditable = defaultValues.bool(forKey: "editable")
        
        let correction = defaultValues.bool(forKey: "correction")
        if correction {
            textEditor.spellCheckingType = .yes
        } else {
            textEditor.spellCheckingType = .no
        }
    }
}
