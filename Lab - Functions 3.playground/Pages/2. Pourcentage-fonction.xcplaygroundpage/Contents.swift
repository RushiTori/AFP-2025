/*:
 ## Fonction - Pourcentage
 
 Vous êtes développeur pour une grande marque de vêtements. Aujourd'hui, ce sont les soldes et votre responsable vous demande expressément de créer un programme pour que les employés de l'entreprise puissent rapidement calculer un pourcentage. Génial ! Grâce aux ***fonctions*** , vous allez pouvoir faire ça bien rapidement. Créer une ***fonction percentage()*** qui prend en ***paramètre*** deux ***labels*** de type ***Double*** . Le premier ***partialValue*** et le second ***totalValue*** . La ***fonction*** retournera le pourcentage de ***partialValue*** sur ***totalValue*** . En bon développeur, vous savez rechercher sur ***Google*** pour trouver la formule de calcul d'un pourcentage.


 Imprimez la fonction percentage() avec deux valeurs de votre choix pour vérifier son fonctionnement.

 */
func percentage(_ partialValue: Double, _ totalValue: Double) -> Double {
    return partialValue / totalValue * 100.0
}

print(percentage(3, 7))
//: [Précédent - Politesse](@previous)  |  page 2 sur 5  |  [Suivant : Marge Brut](@next)
