//
//  DetailViewController.swift
//  TASKEYA_main
//
//  Created by 井上航 on 2016/03/15.
//  Copyright © 2016年 Wataru Inoue. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailUserImage: UIImage!
    @IBOutlet weak var detailUserImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailUserImageView.image = detailUserImage

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackButtonTapped(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
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
