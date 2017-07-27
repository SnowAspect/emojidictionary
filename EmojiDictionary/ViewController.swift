//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Ian Yao on 6/25/17.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableviewsin2017lul: UITableView!
    
    var emojis = ["😎", "💩", "😀", "👠", "🐹", "🐬", "💒"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableviewsin2017lul.dataSource = self
        tableviewsin2017lul.delegate = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "Segue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(sender)
    }

}
