//
//  SideMenuViewController.swift
//  FoodCollocationUI
//
//  Created by Feng Chang on 6/20/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController, GuillotineMenu, GuillotineAnimationDelegate {
    
    var dismissButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dismissButton = UIButton(frame: CGRectZero)
        dismissButton.setImage(UIImage(named: "home_menu_bar_button"), forState: .Normal)
        dismissButton.addTarget(self, action: #selector(dismissButtonTapped(_:)), forControlEvents: .TouchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissButtonTapped(sende: UIButton) {
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
