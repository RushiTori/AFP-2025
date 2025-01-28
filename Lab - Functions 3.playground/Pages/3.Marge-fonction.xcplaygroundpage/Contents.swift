/*:
 ## Fonctions - Marge Brut
 
 Votre employeur est embêté. Chaque mois, c'est la même histoire, il doit payer tous les employés en net, alors que le comptable lui fourni les salaires en brut ! Pour lui faire gagner du temps, vous lui proposer de créer une ***fonction*** qui retournera le salaire d'un employé en net. Créer une ***fonction netPayment*** qui prend en ***paramètre*** un ***label "salary"*** de type ***Double*** . La ***fonction*** doit donc retourner un salaire brut en net. En bon développeur, vous trouverez la formule de calcul d'un salaire brut en net sur le ***Google*** .

 Imprimez votre fonction avec un salaire brut.
 */
func netPayment(_ salary: Double) -> Double {
    return salary * (1.0 - 0.19)
}

print(netPayment(2000))
//: [Précédent - Pourcentage](@previous)  |  page 3 sur 5  |  [Suivant: GAME-OVER](@next)
