//
//  ViewController.swift
//  Glowing Plankton
//
//  Created by Sam Ellenrieder on 02/11/2017.
//  Copyright © 2017 Sam Ellenrieder. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var forecast: UIScrollView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
      let url = URL(string: "http://magicseaweed.com/api/07fd1c1ad4c846ae075e719fc2de262a/forecast/?spot_id=91&units=eu&fields=timestamp,swell.components.combined.height,swell.components.combined.period")
//        let url = URL(string: "http://magicseaweed.com/api/07fd1c1ad4c846ae075e719fc2de262a/forecast/?spot_id=91")
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil
            {
                print("Error mate")
            }
            else
            {
                if let content = data
                {
                 do
                 {
                    let myJson = try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)
                    print(myJson)
                }
                }
            }
        }
        task.resume()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

