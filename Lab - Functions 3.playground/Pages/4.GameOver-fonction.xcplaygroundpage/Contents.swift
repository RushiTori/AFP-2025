/*:
 ## GAME-OVER
 
 Vous êtes en train de créer un jeu vidéo. Pour vérifier si le joueur à encore des points de vie vous allez créer une ***fonction*** qui ***décrémente*** le nombre de points de vie du joueur jusqu’à avoir 0 point de vie et donc GAME-OVER.

 Faire une ***fonction*** qui prend en ***paramètre*** un nombre de points de vie, avec une ***boucle while décrémenter*** la vie de 1 à chaque tour jusqu'à atteindre 0, ***imprimez*** le nombre de points de vie restant à chaque ***itération de la boucle*** . Une fois à 0, c'est la fin de la partie ***imprimez*** GAME-OVER
 */
func slowlyKillPlayer(_ currentHP: UInt32) {
    var hp: UInt32 = currentHP
    
    while hp != 0 {
        hp -= 1
        print(hp)
    }
    
    print("GAME-OVER")
}

slowlyKillPlayer(50)
//: [Précédent](@previous)  |  page 4 sur 4
