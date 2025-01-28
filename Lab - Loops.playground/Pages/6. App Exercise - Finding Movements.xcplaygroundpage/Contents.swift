/*:
 ## Jeux vidéo
 
 Vous jouez à votre jeu vidéo favori, vous engagez un combat. Vous commencez un combat avec 10 points de vie. L'ennemi qui vous attaque a 9 points de vie. L'ennemi vous fait 1 point de dégât à chaque fois qu'il vous touche. Vous faites 2 points de dégâts quand vous touchez l'ennemi.

 À l'aide d'une boucle while, faites en sorte qu'à chaque itération vous soyez touché par l'ennemi et que l'ennemi vous touche également. Imprimez vos points de vie restants à chaque itération, faites de même pour l'ennemi.

 Faites en sorte d'afficher "Game Over" si vous avez 0 point de vie ou moins de 0 point de vie. Si c'est l'ennemi qui a 0 point de vie ou moins de 0 point de vie, imprimez "Vous avez vaincu l'ennemi !!
*/
var health = 10
var damage = 2
var enemyHealth = 9
var enemyDamage = 1

var playing: Bool = true

while playing {
    health -= enemyDamage
    enemyHealth -= damage
    print("Player HP: \(health)")
    print("Enemy HP: \(enemyHealth)")
    
    if health <= 0 {
        print("Game Over")
        playing = false
    } else if enemyHealth <= 0 {
        print("Vous avez vaincu l'ennemi !!")
        playing = false
    }
}


//: [Previous](@previous)

//: [Previous](@previous)  |  page 6 of 6
