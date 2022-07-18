//
//  ViewController.swift
//  Custom TableViewCell Studies
//
//  Created by Burak Yılmaz on 18.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var person = [Person]()
    
    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        person.append(Person(personID: 1, personName: "Ayşe", personTel: 3434345544))
        person.append(Person(personID: 2, personName: "Fatma", personTel: 5343456))
        person.append(Person(personID: 3, personName: "Hayriye", personTel: 12345463))
        person.append(Person(personID: 4, personName: "Memet", personTel: 7534546234))
        person.append(Person(personID: 5, personName: "Ece", personTel: 777553454534))
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource, ButtonClicked {
    
    func clicked(indexPath: IndexPath) {
        
        let alert = UIAlertController(title: "Clicked Person", message: "\(person[indexPath.row].personName)", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true)
        
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let gelenKisi = person[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        cell.personLabel.text = gelenKisi.personName
        
        cell.clickProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
}

