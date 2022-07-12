//
//  Dates.swift
//  senddata
//
//  Created by Ammad on 08/07/2022.
//

import Foundation
import UIKit
class dateview{
    
    var txtDatePicker:UITextField!
    init(){
        
    }
    init(_ txtDatePicker:UITextField!){
        self.txtDatePicker=txtDatePicker
    }
    
    func rettoolbar(_ txtDatePicker:UITextField!,_ wid:Int,_ doneButton:UIBarButtonItem)->UIToolbar{
        
      
        let toolBar = UIToolbar.init(frame: CGRect(x: 0, y: 0, width: wid, height: 44))
  toolBar.setItems([UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil), doneButton], animated: true)
    return toolBar
    }
    
    func inputaccesory(_ txtDatePicker:UITextField!,_ date2:dateview,_ doneButton:UIBarButtonItem,_ wid:Int){
        
        txtDatePicker.inputAccessoryView =  date2.rettoolbar(txtDatePicker,wid , doneButton)
    }
    
    func alldatefunc(_ txtDatePicker:UITextField!,_ date2:dateview,_ wid:Int){
        
        let datePickerView = date2.dateobj(txtDatePicker)
         
         let doneButton = date2.donebutton()
         
         
         date2.inputaccesory(txtDatePicker, date2, doneButton,wid)
         
       
         
         date2.target(datePickerView)
    }
    
    func alltimefunc(_ txtDatePicker:UITextField!,_ date2:dateview,_ wid:Int){
        
        let datePickerView = date2.dateobj1(txtDatePicker)
         
         let doneButton = date2.donebutton1()
         
         
         date2.inputaccesory(txtDatePicker, date2, doneButton,wid)
         
       
         
         date2.target1(datePickerView)
    }
    
    func dateobj(_ txtDatePicker:UITextField!)->UIDatePicker{
        let datePickerView = UIDatePicker()
                     datePickerView.datePickerMode = .date
        
        datePickerView.preferredDatePickerStyle = .wheels
        txtDatePicker.inputView = datePickerView

     return datePickerView
        
    }
    
    func dateobj1(_ txtDatePicker:UITextField!)->UIDatePicker{
        let datePickerView = UIDatePicker()
        datePickerView.datePickerMode = .time
        
        datePickerView.preferredDatePickerStyle = .wheels
        txtDatePicker.inputView = datePickerView

     return datePickerView
        
    }
    func dateformat()->DateFormatter{
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
    return dateFormatter
    }
    func dateformat1()->DateFormatter{
        
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm a"
    
        return dateFormatter
        }
    
    func donebutton()->UIBarButtonItem{
        let date2=ViewController()
        let doneButton =
        UIBarButtonItem.init(title: "Done", style: .done, target: self, action: #selector(date2.datePickerDone))
        return doneButton
    }
    
    
    func target(_ datePickerView:UIDatePicker){
        let date2=ViewController()
        datePickerView.addTarget(self, action: #selector(date2.handleDatePicker(sender:)), for: .valueChanged)
    }
   
    func target1(_ datePickerView:UIDatePicker){
        let date2=ViewController()
        datePickerView.addTarget(self, action: #selector(date2.handleDatePicker1(sender:)), for: .valueChanged)
    }
    func donebutton1()->UIBarButtonItem{
        let date2=ViewController()
        let doneButton =
        UIBarButtonItem.init(title: "Done", style: .done, target: self, action: #selector(date2.datePickerDone1))
        return doneButton
    }
  
    
    
}
