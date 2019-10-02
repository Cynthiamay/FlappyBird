//
//  GameViewController.swift
//  Flappy Bird
//
//  Created by Treinamento on 10/1/19.
//  Copyright © 2019 cynthiamayumiwatanabeyamaoto. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    

    @IBOutlet weak var facil: UIButton!
    
    @IBOutlet weak var dificil: UIButton!
    
    @IBOutlet weak var passarinho: UIImageView!
    
    let padrao = UserDefaults.standard
    
    var velocidade: CGFloat = 10

    var chave = "chave"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    @IBAction func botaoFacil(_ sender: Any) {
    
        
        if let view = self.view as! SKView? {
            
            if let scene = SKScene(fileNamed: "GameScene") {
                
                scene.scaleMode = .aspectFill
                
                
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
            
        }
    
        padrao.set(velocidade, forKey: chave)
        
        facil.isHidden = true
        dificil.isHidden = true
        passarinho.isHidden = true
    }
    
    @IBAction func botaoDificil(_ sender: Any) {
        print("Work!")
        if let view = self.view as! SKView? {
            
            if let scene = SKScene(fileNamed: "GameScene") {
                
                
                scene.scaleMode = .aspectFill
                
                
                view.presentScene(scene)
                
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
            
        }
        facil.isHidden = true
        dificil.isHidden = true
        passarinho.isHidden = true
    }
    

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
