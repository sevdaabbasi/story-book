//
//  ViewController.swift
//  aStoryForEveryDay
//
//  Created by Sevda Abbasi on 5.05.2023.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var myStory = [Story]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Objects
        
        let kirmiziBaslikliKiz = Story(storyName: "Kırmızı Başlıklı Kız", image: UIImage(named: "kirmiziBaslikliKiz")!)
        let cirkinOrdek = Story(storyName: "Çirkin Ördek Yavrusu", image: UIImage(named: "cirkinOrdek")!)
        let cizmeliKedi = Story(storyName: "Çizmeli Kedi", image: UIImage(named: "cizmeliKedi")!)
        let güzelVeCirkin = Story(storyName: "Güzel Ve Çirkin ", image: UIImage(named:"güzelVeCirkin")!)
        let hanselVeGratel = Story(storyName: "Hansel Ve Gratel", image: UIImage(named: "hanselVeGratel")!)
        let kibritciKiz = Story(storyName: "Kibritçi Kız", image: UIImage(named: "kibritciKiz")!)
        let kurbağaPrens = Story(storyName: "Kurbağa Prens", image: UIImage(named: "kurbağaPrens")!)
        let külKedisi = Story(storyName: "Kül Kedisi", image: UIImage(named: "külKedisi")!)
        let pamukPrenses = Story(storyName: "Pamuk Prenses", image: UIImage(named: "pamukPrenses")!)
        let parmakCocuk = Story(storyName: "Parmak Çocuk", image: UIImage(named: "parmakCocuk")!)
        let pinokyo = Story(storyName: "Parmak Çocuk", image: UIImage(named: "parmakCocuk")!)
        let rapunzel = Story(storyName: "Rapunzel", image: UIImage(named: "rapunzel")!)
        
        myStory.append(kirmiziBaslikliKiz)
        myStory.append(cirkinOrdek)
        myStory.append(cizmeliKedi)
        myStory.append(güzelVeCirkin)
        myStory.append(hanselVeGratel)
        myStory.append(kibritciKiz)
        myStory.append(kurbağaPrens)
        myStory.append(külKedisi)
        myStory.append(pamukPrenses)
        myStory.append(parmakCocuk)
        myStory.append(pinokyo)
        myStory.append(rapunzel)
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myStory.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myStory [indexPath.row].storyName
        
        cell.contentConfiguration = content
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
   

}

