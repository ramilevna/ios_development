import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var initials: UILabel!
    @IBOutlet weak var infoUniversity: UILabel!
    @IBOutlet weak var namesurname: UILabel!
    @IBOutlet weak var line: UILabel!
    @IBOutlet weak var university: UILabel!
    @IBOutlet weak var newInfoUni: UIButton!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var infoCity: UILabel!
    @IBOutlet weak var newInfoCity: UIButton!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initials.text = "RL"
        initials.frame = CGRect(x: 115, y: 100, width: 170, height: 170)
        initials.backgroundColor = .gray
        initials.textAlignment = .center
        
        namesurname.text = "Renata Latypova"
        namesurname.frame = CGRect(x: 120, y: 300, width: 200, height: 40)
        namesurname.font = UIFont.boldSystemFont(ofSize: 20)
        
        line.text = "_________________________________________"
        line.frame = CGRect(x: 10, y: 330, width: 400, height: 20)
        
        university.text = "University"
        university.textColor = .gray
        university.frame = CGRect(x: 20, y: 350, width: 200, height: 40)
        
        infoUniversity.numberOfLines = 0
        infoUniversity.text = "Innopolis University\nComputer Science"
        infoUniversity.frame = CGRect(x: 20, y: 380, width: 200, height: 60)
        
        city.text = "City"
        city.textColor = .gray
        city.frame = CGRect(x: 20, y: 440, width: 200, height: 40)
        
        infoCity.numberOfLines = 0
        infoCity.text = "Kazan"
        infoCity.frame = CGRect(x: 20, y: 470, width: 200, height: 60)
        
        
        newInfoUni.frame = CGRect(x: 200, y: 380, width: 200, height: 40)
        newInfoUni.setTitle("*", for: .normal)
        newInfoUni.addTarget(self, action: #selector(newInfoUniTapped), for: .touchUpInside)
        
        image.frame = CGRect(x: 200, y: 380, width: 200, height: 40)
        
        newInfoCity.frame = CGRect(x: 200, y: 470, width: 200, height: 40)
        newInfoCity.setTitle("*", for: .normal)
        newInfoCity.addTarget(self, action: #selector(newInfoCityTapped), for: .touchUpInside)
        
        image2.frame = CGRect(x: 200, y: 470, width: 200, height: 40)
    }
    
    @objc func newInfoUniTapped() {
            let alertController = UIAlertController(title: "Change text", message: nil, preferredStyle: .alert)
            alertController.addTextField { (textField) in
                textField.placeholder = "University"
            }
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            let changeAction = UIAlertAction(title: "Change", style: .default) { (_) in
                if let newText = alertController.textFields?.first?.text {
                    self.infoUniversity.text = newText
                }
            }
            alertController.addAction(cancelAction)
            alertController.addAction(changeAction)
            present(alertController, animated: true, completion: nil)

            

            infoUniversity.isUserInteractionEnabled = true
        }

    @objc func newInfoCityTapped() {
            let alertController = UIAlertController(title: "Change text", message: nil, preferredStyle: .alert)
            alertController.addTextField { (textField) in
                textField.placeholder = "City"
            }

            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            let changeAction = UIAlertAction(title: "Change", style: .default) { (_) in
                if let newText = alertController.textFields?.first?.text {
                    self.infoCity.text = newText
                }
            }
            alertController.addAction(cancelAction)
            alertController.addAction(changeAction)
            present(alertController, animated: true, completion: nil)

            infoCity.isUserInteractionEnabled = true
        }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        initials.clipsToBounds = true
        initials.font = UIFont.boldSystemFont(ofSize: 80)
        initials.layer.cornerRadius = initials.bounds.width / 2
    }
    
}

