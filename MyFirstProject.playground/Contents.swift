// pour créer un array vide
// var fruits: [String] = [String]()

var fruits: [String] = ["Fraise", "Banane", "Kiwi"]
print(fruits)

// pour ajouter un élément on peut faire avec +
fruits = fruits + ["Pomme"]
print(fruits)

// le raccourci += fonctionne aussi
fruits += ["Mandarine"]
print(fruits)

// on peut ajouter plusieurs éléments en même temps avec + et +=
fruits += ["Melon", "Framboise"]
print(fruits)

// on peut ajouter un élément avec la fonction append
fruits.append("Pasteque")
print(fruits)

// mais on ne peut pas ajouter plusieurs éléments avec append
// fruits.append(["Poire", "Orange"])

// on peut insérer un élément à un index "at" grace à la fonction insert
fruits.insert("Poire", at: 1)

// mais on ne paut pas insérer plusieurs éléments avec insert
// fruits.insert(["Orange", "Cerise"], at: 2)

// on peut vérifier si un array contiens un élément avec la fonction contains
if fruits.contains("Pomme") {
    print("Il y as un élément \"Pomme\" dans mon array")
} else {
    print("Mon array n'as pas l\'élément \"Pomme\"")
}

// on peut supprimer un élément à un index "at" avec la fonction remove et récuperer (ou non) l'élément supprimé
var fruit3: String = fruits.remove(at: 3)
print(fruits)

// supprimer le dernier élément avec removeLast
var lastFruit: String = fruits.removeLast()
print(fruits)

// et finalement on peut tout supprimer avec la fonction removeAll
fruits.removeAll()
print(fruits)

// pour créer un dictionnaire vide
// var capitals: [String: String] = [String: String]()
var capitals: [String: String] = ["France": "Paris"]
print(capitals)

// pour ajouter une valeur
capitals["USA"] = "Washington DC"
print(capitals)

// on ne peut pas utilisé + ou += pour ajouter un élément
// capitals += ["UK": "London"]

// on peut modifier une valeur déjà existante de la même manière
capitals["France"] = "Lyon"
print(capitals)

// mais aussi avec un appelle de fonction updateValue
capitals.updateValue("Paris", forKey: "France")
print(capitals)

// updateValue peut aussi ajouter un élément dans un dictionnaire
capitals.updateValue("LUL", forKey: "LMAO")
print(capitals)

// pour supprimer une pair clé:valeur on peut utiliser la fonction removeValue
capitals.removeValue(forKey: "LMAO")

// removeAll existe aussi pour les dictionnaires
capitals.removeAll()












var a: Int
var b: Double
var c: String

var name: String
var age: Int

struct Person {
    var name: String // propriété
    var age: Int
    var ageInDogYear: Int { // propriété calculé
        if age < 0 {
            return 0
        } else {
            return age * 7
        }
    }
    
    func sayHello() { // méthode
        print("Hello")
    }
    
    func sayName() {
        print(name)
    }
}

var p2: Person = Person(name: "Sarah", age: -4)

print(p2.ageInDogYear)



var friendList: [Person] = [Person(name: "Sarah", age: -4),
                            Person(name: "Henry", age: -4),
                            Person(name: "Phil", age: -4)]

friendList[0].sayHello()
