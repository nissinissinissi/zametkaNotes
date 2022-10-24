//
//  EntryViewController.swift
//  zametkaNotes
//
//  Created by User on 28 Tishri 5783.
//

import UIKit

class EntryViewController: UIViewController {
    @IBOutlet  var titleField: UITextField!
    @IBOutlet var noteField: UITextView!
    
    public var completion: ((String, String) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        titleField.becomeFirstResponder()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Сохранить", style: .done, target: self, action:  #selector(didTapSave))
        // Do any additional setup after loading the view.
    }
    

    @objc func didTapSave() {
        if let text = titleField.text,  !text.isEmpty, !noteField.text.isEmpty{
            completion?(text, noteField.text)
        }
    }
}
