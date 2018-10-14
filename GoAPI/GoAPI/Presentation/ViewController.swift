//
//  ViewController.swift
//  GoAPI
//
//  Created by futa on 2018/10/13.
//  Copyright © 2018年 furiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var presenter: TodoPresenter!
    var todos = [TodoModel]()
    var task: TodoModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = TodoPresenter(view: self)
        presenter.printTodo()
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if todos.count > indexPath.row {    //todosの要素が存在すればcellの内容を上書き
            cell.textLabel?.text = todos[indexPath.row].Name
        } else {
            cell.textLabel?.text = ""
        }
        return cell
    }
}


extension ViewController: TodoView {

    func printTodo(_ todos: [TodoModel]) {
        print("ViewController printTodo")
/*        print(todo.Id)
        print(todo.Name)
        print(todo.Time)*/
//        todos?.append(todo)
        self.todos += todos
        
        print(todos)
        tableView.reloadData() //API通信終了後tableViewをリロード
        print("reload")
    }
    
    func errorHandler(_ error: Error) {
        let alert: UIAlertController = UIAlertController(title: "Todoが見つかりませんでした", message: error as? String, preferredStyle: .alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: {(action: UIAlertAction!) -> Void in
            print("printed alert")})
        alert.addAction(defaultAction)
        self.present(alert, animated: true, completion: nil)
    }
}

