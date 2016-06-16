//
//  HomeViewController.swift
//  FoodCollocationUI
//
//  Created by Feng Chang on 6/15/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var healtyButton: UIButton!
    @IBOutlet weak var tastyButton: UIButton!
    @IBOutlet weak var TBD1Button: UIButton!
    @IBOutlet weak var TBD2Button: UIButton!
    @IBOutlet weak var TBD3Button: UIButton!
    @IBOutlet weak var TBD4Button: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    var choiseButtons = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        disNavAppear()
        frameButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("toIngredientSegue", sender: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func disNavAppear() {
        self.navigationController?.navigationBar.translucent = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    func frameButtons() {
        self.choiseButtons = [healtyButton,tastyButton,TBD1Button,TBD2Button,TBD3Button,TBD4Button,submitButton]
        for button in choiseButtons {
            button.layer.cornerRadius = 2.5
            button.layer.borderWidth = 0.5
        }
    }
}
