//
//  HomeViewController.swift
//  FoodCollocationUI
//
//  Created by Feng Chang on 6/15/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    @IBOutlet weak var forBuilderButton: UIButton!
    @IBOutlet weak var forMenButton: UIButton!
    @IBOutlet weak var forWomenbButton: UIButton!
    @IBOutlet weak var forBeginnerButton: UIButton!
    @IBOutlet weak var forTransformerButton: UIButton!
    @IBOutlet weak var forIntermediateButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    var choiseButtons = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        disNavAppear()
        frameButtons()
        
        let menuViewController = storyboard!.instantiateViewControllerWithIdentifier("SideMenuViewController")
        menuViewController.modalPresentationStyle = .Custom
        menuViewController.transitioningDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    func disNavAppear() {
        self.navigationController?.navigationBar.translucent = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    func frameButtons() {
        self.choiseButtons = [forBuilderButton,forMenButton,forWomenbButton,forBeginnerButton,forTransformerButton,forIntermediateButton,submitButton]
        for button in choiseButtons {
            button.layer.cornerRadius = 2.5
            button.layer.borderWidth = 0.5
        }
    }
}
