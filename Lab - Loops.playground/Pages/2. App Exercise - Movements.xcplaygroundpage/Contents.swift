/*:
 ## Parcourir des tableaux et des dictionnaires.
 
 
 Supposons que votre application contienne une liste de différents mouvements pouvant être suivis. Vous souhaitez afficher chaque élément de la liste à l'utilisateur. Utilisez une boucle for-in pour parcourir les mouvements ci-dessous et imprimer chaque mouvement.
 */
let mouvements: [String] = ["Natation", "Course", "Marche", "Saut"]

for move in mouvements {
    print(move)
}
/*:
 Créez un dictionnaire capitals de type [String: String] et ajoutez au moins 4 pays en clés et leur capitale en valeur. Utilisez une boucle for-in pour parcourir le dictionnaire et afficher chaque pays et sa capitale grâce à l'interpolation. Exemple : "Paris est la capitale de la France".
 */
var capitals: [String: String] = ["France": "Paris", "USA": "Washington DC", "UK": "London", "Spain": "Lisbon"]

for (key, value) in capitals {
    print("\(value) est la capitale de la \(key)")
}
//: [Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - While Loops](@next)
