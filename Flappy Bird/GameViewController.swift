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
    
    let defaults = UserDefaults.standard
    
    var velocidadeGlobal: CGFloat?

    @IBOutlet weak var facil: UIButton!
    
    @IBOutlet weak var dificil: UIButton!
    
    @IBOutlet weak var passarinho: UIImageView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    @IBAction func botaoFacil(_ sender: Any) {
    
        configuracaoDaVelocidade(velocidade: 1)

        
        if let view = self.view as! SKView? {
            
            if let scene = SKScene(fileNamed: "GameScene") {
                
                scene.scaleMode = .aspectFill
                
                
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
            
        }
   
    }
    
    @IBAction func botaoDificil(_ sender: Any) {
        print("Work!")
        
        configuracaoDaVelocidade(velocidade: 3)

        
        if let view = self.view as! SKView? {
            
            
            
            if let scene = SKScene(fileNamed: "GameScene") {
                
                
                scene.scaleMode = .aspectFill
                
                
                view.presentScene(scene)
                
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
            
            
        }
        
    }
    func configuracaoDaVelocidade(velocidade:CGFloat)  {
        
        velocidadeGlobal = velocidade
        
        defaults.set(velocidadeGlobal, forKey: "chave")
        
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
