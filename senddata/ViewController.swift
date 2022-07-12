//
//  ViewController.swift
//  senddata
//
//  Created by Ammad on 08/07/2022.
//

import UIKit
import Alamofire
class ViewController: UIViewController {
    var mydate:String=""
    var mytime:String=""
    
    
    @IBOutlet weak var txtDatePicker1: UITextField!
    @IBOutlet weak var mymessage: UITextView!
    
    @IBOutlet weak var txtDatePicker: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        mdate()
        mdate1()

}
    
    
    
    func mdate(){
        var date2=dateview()
        date2.alldatefunc(txtDatePicker, date2,Int(view.bounds.size.width) )
    }
    
    @objc func datePickerDone() {
        txtDatePicker.resignFirstResponder()
      }
    @objc func handleDatePicker(sender: UIDatePicker) {
             
        var date2=dateview()
        let dateFormatter = date2.dateformat()
               txtDatePicker.text = dateFormatter.string(from: sender.date)
        // mydate=(txtDatePicker.text)!
            
     }
    
    
    
    
    
  
    func mdate1(){
        var date2=dateview()
        date2.alltimefunc(txtDatePicker1, date2,Int(view.bounds.size.width) )
  }
  
 
    
      @objc func datePickerDone1() {
          txtDatePicker1.resignFirstResponder()
        }

    @objc func handleDatePicker1(sender: UIDatePicker)
    {
        var date2=dateview()
        let dateFormatter = date2.dateformat1()
        txtDatePicker1.text = dateFormatter.string(from: sender.date)
}
           override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
               self.view.endEditing(true)
           }

   
    @IBAction func onclick(_ sender: Any) {
        
        adddata()
        
    }
    
    
    func adddata(){
        var mymodel=Model()
        
        var data1=["date":"2053-06-03",
                  "time_slot":"9:00 AM"
                  ,"type":"Physical"
                  ,"payment_status":"Cash"
                  ,"description":"this is testing"
                  ,"patient_id":"1"
                  ,"time_slot_id":"91"]
        
    
        mymodel.data=data1
        mymodel.data["description"]=mymessage.text!
        mytime=txtDatePicker1.text!
        mymodel.data["time_slot"]=mytime
        mydate=txtDatePicker.text!
        mymodel.data["date"]=mydate
        var mynetwork=Network()
        mynetwork.postdata(mymodel)
        
        
    }
    
    
    
    
  
 
    

}
