//
//  ViewController.swift
//  4
//
//  Created by 劉奕伶 on 2018/7/29.
//  Copyright © 2018年 Appwork School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://stations-98a59.firebaseio.com/.json") else { return }
        
            let task = URLSession.shared.dataTask(with: url) { (data, response , error) in
                
               
                guard let data = data else { return }
                do {
                    let decoder = JSONDecoder()
                    let infoData = try decoder.decode(StationInfo.self, from: data)
                    print(infoData)
                    
                } catch let error {
                    print(error)
                }
        }
        
        task.resume()
                
                
                
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        guard let url = URL(string: "https://stations-98a59.firebaseio.com/.json") else { return }
        
        
        let session = URLSession.shared
        
       let dataTask =  session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
            }
            
            if let data = data {
                print(data)
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                } catch {
                    print(error)
                }
            }
        
    }
        dataTask.resume()
 */

   

}
    
    func displayInfo(using viewModel: StationInfoViewModel) {
        stationIDLabel.text = viewModel.StationID
        stationNameLabel.text = viewModel.StationName
        addressLabel.text = viewModel.StationAddress
        
    }
}

















