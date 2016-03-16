//
//  MyPastPostListViewController.swift
//  TASKEYA_main
//
//  Created by 井上航 on 2016/03/16.
//  Copyright © 2016年 Wataru Inoue. All rights reserved.
//

import UIKit

class MyPastPostListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    
    let titleArray: [String] = [
        "title001=aaaaa",
        "c02.png",
        "c03.png",
        "c04.png",
        "c05.png",
        "c06.png",
        "c07.png",
        "c08.png"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        table.dataSource = self
        table.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Table Viewのセルの数を指定
    func tableView(table: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    //各セルの要素を設定する
    func tableView(table: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // tableCell の ID で UITableViewCell のインスタンスを生成
        let cell = table.dequeueReusableCellWithIdentifier("tableCell", forIndexPath: indexPath)
        
        
        // tag1: titleLabel
        let titleLabel = table.viewWithTag(1) as! UILabel
        titleLabel.text = titleArray[indexPath.row]
        
        // tag2: detailTextView
        let detailTextView = table.viewWithTag(2) as! UITextView
        let str = "詳細説明文" + String(titleArray[indexPath.row]) + "\n" + "もももももももももも"
        detailTextView.editable = false 
        detailTextView.text = str
        
        // tag3: placeLabel
        // tag4: timeLabel
        // tag5: priceLabel
        // tag6: candidateNumberButton
        
//        let img = UIImage(named:"\(imgArray[indexPath.row])")
//        // Tag番号 1 で UIImageView インスタンスの生成
//        let imageView = table.viewWithTag(1) as! UIImageView
//        imageView.image = img
//        
//        // Tag番号 ２ で UILabel インスタンスの生成
//        let label1 = table.viewWithTag(2) as! UILabel
//        label1.text = "No.\(indexPath.row + 1)"
//        let color = ColorManager() //インスタンス化
//        label1.backgroundColor = color.mainColor()
//        
//        // Tag番号 ３ で UILabel インスタンスの生成
//        let label2 = table.viewWithTag(3) as! UILabel
//        label2.text = "\(label2Array[indexPath.row])"
//        
//        // Tag番号 4 で UILabel インスタンスの生成
//        let label4 = table.viewWithTag(4) as! UILabel
//        label4.text = "\(String(imgArray[indexPath.row]))"
        
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

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
