enum PastaTypes: Int {
    case spaghetti = 8
    case penne = 10
    case ravioli = 11
    case rigatoni = 12
}

//let cookingTime = PastaTypes.spaghetti.rawValue
//print("Spanish pasta cooks in \(cookingTime) minutes.")

func cookingPerfectPasta(pasta: PastaTypes) {
    let cookingTime = pasta.rawValue
    print("\(pasta) will be perfectly cooked in \(cookingTime) minutes")
}

cookingPerfectPasta(pasta: .rigatoni)

enum PastaTypes: Int, CaseIterable {
    case spaghetti
    case penne
    case ravioli
    case rigatoni
}

let totalCaseCount = PastaTypes.allCases.count
print(totalCaseCount)

enum PastaTypesA {
    case spaghetti(cookingTime: Int)
    
    case penne(cookingTime: Int)
    case ravioli(cookingTime: Int)
    case riga(cookingTime: Int)
}

var checkIfCooked = PastaTypesA.spaghetti(cookingTime: 8)

enum PastaTypesA {
    case spaghetti(cookingTime: Int)
    
    case penne(cookingTime: Int)
    case ravioli(cookingTime: Int)
    case riga(cookingTime: Int)
}

func checkIfCooked(for pasta: PastaTypesA) {
    switch pasta {
    case .spaghetti(let cookingTime):
        if cookingTime < 8 {
            print("Spaghetti is still not fully cooked..")
        } else {
            print("Spaghetti is cooked, take it out of the water!")
        }
        
    default: return
    }
}

checkIfCooked(for: .spaghetti(cookingTime: 9))

enum PastaTypesA {
    case spaghetti(cookingTime: Int)
    
    case penne(cookingTime: Int)
    case ravioli(cookingTime: Int)
    case riga(cookingTime: Int)
}

func checkIfCooked2(for pasta: PastaTypesA) {
    switch pasta {
    case .spaghetti(let cookingTime) where cookingTime >= 8:
        print("Spaghetti is cooked, take it out of the water!")
    default: print("Pasta is not cooked.")
    }
}

checkIfCooked2(for: .spaghetti(cookingTime: 7))

// Exercises
enum Ingredients: String {
    case tomatoes = "tomatoes"
    case romaineLettuce = "romaine lettuce"
    case olives = "olives"
    case roastedSweetPepper = "roasted sweet pepper"
    case garlic = "garlic"
    case ItalianSeasoning = "Italian seasoning"
    case oliveOil = "Olive Oil"
}

var ingredient = Ingredients.romaineLettuce

switch ingredient {
case .romaineLettuce:
    print("We use \(ingredient.rawValue) that has the richest falvor from all the lettuces")
default:
    print("None")
}

enum RecipeInformation {
    case allergen(information: String)
}

var recipeInformation = RecipeInformation.allergen(information: "Gluten")

switch recipeInformation {
case.allergen(var information):
    print("Our salad includes: \(information)")
}
