//
//  ViewController.swift
//  MVC
//
//  Created by R87 on 06/07/23.
//

import UIKit

struct Daata{
    var name : String
    var image : UIImage
    var details : String
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tb: UITableView!
    
    var arr = [Daata(name: "Narendra modi", image: UIImage(named: "1")!, details: "Narendra Damodardas Modi (Gujarati: [ˈnəɾendɾə dɑmodəɾˈdɑs ˈmodiː] (listen); born 17 September 1950)[b] is an Indian politician who has served as the 14th Prime Minister of India since May 2014. Modi was the Chief Minister of Gujarat from 2001 to 2014 and is the Member of Parliament (MP) for Varanasi. He is a member of the Bharatiya Janata Party (BJP) and of the Rashtriya Swayamsevak Sangh (RSS), a right-wing Hindu nationalist paramilitary volunteer organisation. He is the longest-serving prime minister from outside the Indian National Congress."),Daata(name: "Mahendra Dhoni", image: UIImage(named: "2")!, details: "Mahendra Singh Dhoni (/məˈheɪndrə ˈsɪŋ dhæˈnɪ/ (listen); born 7 July 1981) is an Indian professional cricketer. He was captain of the Indian national team in limited-overs formats from 2007 to 2017 and in Test cricket from 2008 to 2014. He plays as a right-handed wicket-keeper-batsman and is also the current captain of Chennai Super Kings in the Indian Premier League."),Daata(name: "Elon Musk", image: UIImage(named: "3")!, details: "Elon Reeve Musk (/ˈiːlɒn/ EE-lon; born June 28, 1971) is a business magnate and investor. He is the founder, CEO and chief engineer of SpaceX; angel investor, CEO and product architect of Tesla, Inc.; founder, owner, CTO and chairman of X Corp. and Twitter; founder of the Boring Company; co-founder of Neuralink and OpenAI; and president of the philanthropic Musk Foundation. Musk is the wealthiest person in the world, with an estimated net worth as of July 5, 2023, of around US$247 billion according to the Bloomberg Billionaires Index and $251.1 billion according to Forbes's Real Time Billionaires list, primarily from his ownership stakes in Tesla and SpaceX."),Daata(name: "Ratan Tata", image: UIImage(named: "4")!, details: "Ratan Naval Tata (born 28 December 1937) is an Indian industrialist, philanthropist and former chairman of Tata Sons. He was a chairman of the Tata Group from 1990 to 2012, and interim chairman from October 2016 through February 2017. He continues to head its charitable trusts.[2][3] In 2008, he received the Padma Vibhushan, the second highest civilian honour in India, after receiving the Padma Bhushan, the third highest civilian honour in 2000.[4]"),Daata(name: "vijay malya", image: UIImage(named: "5")!, details: "Vijay Vittal Mallya (born 18 December 1955) is an Indian businessman,[5] former politician and fugitive.[6][7] He is the subject of an extradition effort by the Indian Government to return him from the UK to face charges of financial crimes in India")]
    
    var check = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        var arr1 = arr[indexPath.row]
        cell.labelOfName.text = arr1.name
        cell.imgView.image = arr1.image
        cell.labelOfDetails.text = arr1.details
        cell.labelOfDetails.numberOfLines = (check.contains(indexPath.row) ? 0 : 1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if check.contains(indexPath.row) {
            var a = check.firstIndex(of: indexPath.row)
            check.remove(at: a!)
        }else {
            check.append(indexPath.row)
        }
        tableView.reloadData()
    }
    



}

