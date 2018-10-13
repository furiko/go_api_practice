//
//  ViewController.swift
//  GoAPI
//
//  Created by futa on 2018/10/13.
//  Copyright © 2018年 furiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    var presenter: TodoPresenter!
    
    var task: TodoModel!
    
    @IBOutlet weak var TodoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        presenter = TodoPresenter(view: self)
      //  presenter.printTodo()
        TodoLabel.text = "test!!!"
    }
    
 


}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        let Task = task
        cell.textLabel!.text = "Test"
        print("check")
        return cell
        
    }
    

}

extension ViewController: TodoView {

    func printTodo(_ todo: TodoModel) {
        print(todo.Id)
        print(todo.Name)
        print(todo.Time)
        self.task = todo
    }
    
    func errorHandler(_ error: Error) {
        let alert: UIAlertController = UIAlertController(title: "Todoが見つかりませんでした", message: error as? String, preferredStyle: .alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: {(action: UIAlertAction!) -> Void in
            print("printed alert")})
        alert.addAction(defaultAction)
        self.present(alert, animated: true, completion: nil)
    }
}

