//
//  ViewController.swift
//  ModulApp
//
//  Created by Ievgen Samoilyk on 17.06.2021.
//

import UIKit

public class ViewController: UIViewController {

    @IBOutlet var label: UILabel!

    public override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "ViewDidLoad"
    }

    public static let storyboardVC = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: "ViewControllerID")
}

