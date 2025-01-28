/*:
 ## Modélise tes voitures

 On va gérer un garage automobile à l’aide d’une structure. Pour gérer ce garage, on va commencer par modéliser les voitures qu’il va posséder. Crée une structure pour tes voitures. Cette structure doit avoir quatre propriétés (marque, couleur, type de véhicule, nombre de chevaux).
*/
struct Car {
    var brand: String
    var type: String
    var color: String
    var horses: UInt32
    var pollutionLabel: String {
        if horses < 150 {
            return "écologique"
        }
        return "polluante"
    }
    
    func startEngine() {
        print("La \(brand) \(color) à démarré")
    }
}

var garage: [Car] = [Car]()
/*:
 ## Mes tes voitures au garage

 Maintenant que tu as créé ton modèle de voiture, crée un tableau qui va te servir de garage pour tes voitures. Mets 5 voitures ou plus dans ton garage avec différents types. Fais-toi plaisir sur les modèles de véhicule.
*/
garage += [Car(brand: "ferrari", type: "Car", color: "red", horses: 125),
           Car(brand: "ferrari", type: "Car", color: "red", horses: 125),
           Car(brand: "ferrari", type: "Car", color: "red", horses: 125),
           Car(brand: "ferrari", type: "Car", color: "red", horses: 125),
           Car(brand: "ferrari", type: "Car", color: "red", horses: 125)]
/*:
 ## Affiche tes voitures

 Pour que tes clients puissent consulter les véhicules disponibles dans ton garage, utilise une boucle **`for in`** pour afficher chaque modèle dans la console. Utilise une phrase avec interpolation du genre : "marque du véhicule" "couleur du véhicule" de type "type du véhicule" avec "chevaux" chevaux.
*/
for car in garage {
    print("\(car.brand) \(car.color) de type \(car.type) avec \(car.horses) chevaux")
}
/*:
 ## Démarre une voiture

 Un client a envie d'essayer le premier véhicule de ton catalogue. Crée une méthode qui va permettre à la voiture de démarrer. Cette méthode renvoie simplement une chaîne de caractères indiquant qu’un véhicule a démarré avec la phrase suivante : "La voiture [modèle] de couleur [couleur] a démarré.”
*/
garage[0].startEngine()
/*:
 ## A bas la pollution

 Le gouvernement vient de passer une nouvelle réglementation. Pour les véhicules ayant plus de 150 chevaux, il faut impérativement indiquer à l'acheteur que le véhicule est polluant. De plus, il faut indiquer que le véhicule a le label écologique s'il a moins de 150 chevaux. Utilise une propriété calculée qui permettra d’informer l’utilisateur sur le label écologique ou polluant du véhicule.
*/
print(garage[1].pollutionLabel)
