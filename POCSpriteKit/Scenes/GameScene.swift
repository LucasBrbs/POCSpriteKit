//
//  GameScene.swift
//  POCSpriteKit
//
//  Created by Lucas Barbosa de Oliveira on 21/03/23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {


    //mark - properties
private let worldNote = SKNode()

    //mark: lifecycle
    override func didMove(to view: SKView) {
        setupNodes()

    }

}
//mark: - configures
extension GameScene {
    func setupNodes(){
        addChild(worldNote)
        setupBG()
    }
}

//mark: - background
extension GameScene {
    //Criacao do cenario
    func setupBG(){
        //percorrer os eventos do cenario
        for i in 0...2 {
            let bg = createBG()
        }
    }
    func createBG() -> SKSpriteNode {
        //criacao do background iniciado no ponto zero
        let bg = SKSpriteNode()
        bg.anchorPoint = .zero
        bg.name = "Background"

        //criacao do primeiro elemento e seus subsequentes
        let bg1 = SKSpriteNode(imageNamed: "bg1_1")
        bg1.anchorPoint = .zero
        bg1.position = .zero
        bg.addChild(bg1)
        return bg
    }
}
