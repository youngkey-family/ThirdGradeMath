//
//  ViewController.swift
//  Math_App
//
//  Created by Ke Wang on 3/11/17.
//  Copyright © 2017 YoungKey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var student_answer: UITextField!
    @IBOutlet weak var result_words: UILabel!
    @IBOutlet weak var practice_questions: UILabel!
    var results: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextTest(_ sender: Any) {
        let first = arc4random_uniform(12)
        let second = arc4random_uniform(12)
        practice_questions.text = "\(first) * \(second) = "
        results = String(first * second)
    }

    @IBAction func check_result(_ sender: Any) {
    if  (student_answer.text == results) {
        result_words.text = "Your answer is correct. You should be very proud of yourself."  }
    else  {
        result_words.text = "You answer is close. Try one more time."
        }}
}

