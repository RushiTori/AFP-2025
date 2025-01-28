/*:
 ## Fonctions
 
 Vous en avez marre de dire constamment bonjour à tout le monde, pour remédier à cette abominable répétition, vous allez créer une ***fonction hello()*** qui imprime "Salut !". Appelez votre ***fonction*** pour vérifier son fonctionnement.
 */
func hello() {
    print("Salut !")
}

hello()
/*:
 Votre ***fonction hello()*** est top ! Mais cependant, on aimerait personnaliser notre Salut à la personne que l'on rencontre. Pour ce faire, écrivez une nouvelle fonction ***helloMyFriends()*** et passer lui en ***paramètre*** de la fonction un ***label*** ''name' de type ***String*** . Enfin, grâce à ***l'interpolation*** faite en sorte que la ***fonction*** imprime Salut suivi du nom de votre ami.

 Appelez la ***fonction*** avec le nom d'un de vos camarades.
 */
func helloMyFriend(_ name: String) {
    print("Salut \(name) !")
}

helloMyFriend("Aurore")
//: Page 1 sur 5  |  [Suivant: Pourcentage](@next)
