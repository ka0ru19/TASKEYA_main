//
//  RequestListViewController.swift
//  TASKEYA_main
//
//  Created by 井上航 on 2016/03/14.
//  Copyright © 2016年 Wataru Inoue. All rights reserved.
//

//「他人の仕事tab」

import UIKit

class RequestListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var table: UITableView!
//    @IBOutlet weak var testView: UIView!
    
    var userImage: UIImage?
    
    // 写真の読み込み
    let imgArray: NSArray = [
        "c01.png",
        "c02.png",
        "c03.png",
        "c04.png",
        "c05.png",
        "c06.png",
        "c07.png",
        "c08.png"]
    
    //
    let label2Array: NSArray = [
        "2013/8/23/16:04",
        "2013/8/23/16:15",
        "2013/8/23/16:47",
        "2013/8/23/17:10",
        "2013/8/23/17:15",
        "2013/8/23/17:21",
        "2013/8/23/17:33",
        "2013/8/23/17:41"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        
//        testView.alpha = 0.2

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Table Viewのセルの数を指定
    func tableView(table: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    //各セルの要素を設定する
    func tableView(table: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // tableCell の ID で UITableViewCell のインスタンスを生成
        let cell = table.dequeueReusableCellWithIdentifier("tableCell", forIndexPath: indexPath)
        
        let img = UIImage(named:"\(imgArray[indexPath.row])")
        // Tag番号 1 で UIImageView インスタンスの生成
        let imageView = table.viewWithTag(1) as! UIImageView
        imageView.image = img
        
        // Tag番号 ２ で UILabel インスタンスの生成
        let label1 = table.viewWithTag(2) as! UILabel
        label1.text = "No.\(indexPath.row + 1)"
        let color = ColorManager() //インスタンス化
        label1.backgroundColor = color.mainColor()
        
        // Tag番号 ３ で UILabel インスタンスの生成
        let label2 = table.viewWithTag(3) as! UILabel
        label2.text = "\(label2Array[indexPath.row])"
        
        // Tag番号 4 で UILabel インスタンスの生成
        let label4 = table.viewWithTag(4) as! UILabel
        label4.text = "\(String(imgArray[indexPath.row]))"
        
        // Tag番号 5 で UILabel インスタンスの生成
        //let textView = table.viewWithTag(5) as! UITextView
        
//        let style = NSMutableParagraphStyle()
//        style.lineSpacing = 1
//        let attributes = [NSParagraphStyleAttributeName : style]
//        textView.attributedText = NSAttributedString(string: textView.text, attributes: attributes)
        
//        let str = "\(String(imgArray[indexPath.row])) : \(label2Array[indexPath.row]) : \(String(imgArray[indexPath.row])) : \(String(imgArray[indexPath.row])) : \(String(imgArray[indexPath.row])) : \(String(imgArray[indexPath.row]))"
//        
//        
//        textView.font = UIFont(name: str, size: 10)
        
        return cell
    }
    
    // Cell が選択された場合
    func tableView(table: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        // [indexPath.row] から画像名を探し、UImage を設定
        userImage = UIImage(named:"\(imgArray[indexPath.row])")
        if userImage != nil {
            // SubViewController へ遷移するために Segue を呼び出す
            performSegueWithIdentifier("toDetailVC",sender: nil)
        }
        
    }
    
    // Segue 準備
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "toDetailVC" {
            let detailVC: DetailViewController = (segue.destinationViewController as? DetailViewController)!
            // SubViewController のselectedImgに選択された画像を設定する
            detailVC.detailUserImage = userImage
        }
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
