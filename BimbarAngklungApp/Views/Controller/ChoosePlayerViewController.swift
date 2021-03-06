//
//  ChoosePlayerViewController.swift
//  BimbarAngklungApp
//
//  Created by Calista Nadia Irawan on 23/06/21.
//

import UIKit
import AVFoundation

class ChoosePlayerViewController: UIViewController {

//    @IBOutlet weak var multiplayerButton: UIImageView!
//    @IBOutlet weak var singleplayerButton: UIImageView!
    
    var modeChosen : String = ""
    
    @IBOutlet weak var multiplayerButton: UIButton!
    @IBOutlet weak var singleplayerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        
        multiplayerButton.layer.cornerRadius = 20
        singleplayerButton.layer.cornerRadius = 20
    }
    
    @IBAction func multiplayerButtonTapped(_ sender: Any) {
        modeChosen = "Multiplayer"
        performSegue(withIdentifier: "GoToSelectSong", sender: sender)
        
    }
    @IBAction func singleplayerButtonTapped(_ sender: Any) {
        modeChosen = "SinglePlayer"
        performSegue(withIdentifier: "GoToSelectSong", sender: sender)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToSelectSong" {
            let SelectSongViewController = segue.destination as? SelectSongViewController
            SelectSongViewController?.modalPresentationStyle = .fullScreen
            SelectSongViewController?.modeChosen = modeChosen
        } else if segue.identifier == "GoToSelectSong" {
            let SelectSongViewController = segue.destination as? SelectSongViewController
            SelectSongViewController?.modalPresentationStyle = .fullScreen
            SelectSongViewController?.modeChosen = modeChosen
        }
    }
    
// untuk buat image view jadi action button untuk multiplayerButton
//        let multiplayerTap = UITapGestureRecognizer(target: self, action: #selector(self.multiplayerTapped))
//        multiplayerButton.addGestureRecognizer(multiplayerTap)
//        multiplayerButton.isUserInteractionEnabled = true
//
//        // untuk image view single player
//        let singleplayerTap = UITapGestureRecognizer(target: self, action: #selector(self.singleplayerTapped))
//        singleplayerButton.addGestureRecognizer(singleplayerTap)
//        singleplayerButton.isUserInteractionEnabled = true
//    }
//
//    // untuk kasih instruksi pindah ke page mana
//    @objc func multiplayerTapped(sender: UITapGestureRecognizer) {
//        if sender.state == .ended {
//            let storyboard = UIStoryboard(name: "MPC", bundle: nil);
//            let viewController = storyboard.instantiateViewController(withIdentifier: "MPCBoard") as! MPCViewController;
//            self.navigationController?.pushViewController(viewController, animated: true)
//        }
//    }
//
//    @objc func singleplayerTapped(sender: UITapGestureRecognizer) {
//        if sender.state == .ended {
//            let storyboard = UIStoryboard(name: "Main", bundle: nil);
//            let viewController = storyboard.instantiateViewController(withIdentifier: "FreePlay") as! MPCViewController;
//            self.navigationController?.pushViewController(viewController, animated: true)
//        }
}

//hai
