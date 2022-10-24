//
//  NoteViewController.swift
//  zametkaNotes
//
//  Created by User on 28 Tishri 5783.
//

import UIKit

class NoteViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var noteLabel: UITextView!
    public var noteTitle: String = ""
    public var note: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = noteTitle

        // Do any additional setup after loading the view.
    }
    


}
