//
//  ViewController.swift
//  CollectionCell
//
//  Created by Het Prajapati on 9/8/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    var models = [Model]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "Steve Jobs", imageName: "steve_jobs"))
        models.append(Model(text: "Tim Cook", imageName: "tim_cook"))
        models.append(Model(text: "Phil Schiller", imageName: "phil_schiller"))
        models.append(Model(text: "Craig Federighi", imageName: "craig_federighi"))
        
        
        models.append(Model(text: "Steve Jobs", imageName: "steve_jobs"))
        models.append(Model(text: "Tim Cook", imageName: "tim_cook"))
        models.append(Model(text: "Phil Schiller", imageName: "phil_schiller"))
        models.append(Model(text: "Craig Federighi", imageName: "craig_federighi"))
        
        models.append(Model(text: "Steve Jobs", imageName: "steve_jobs"))
        models.append(Model(text: "Tim Cook", imageName: "tim_cook"))
        models.append(Model(text: "Phil Schiller", imageName: "phil_schiller"))
        models.append(Model(text: "Craig Federighi", imageName: "craig_federighi"))
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        
        table.delegate = self
        table.dataSource = self
    }
    
    // Table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }


}

struct Model {
    let text: String
    let imageName: String
    
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
}
