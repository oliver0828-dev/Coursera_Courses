var colors: Set<String> = ["Red", "Blue", "Green"]
colors.insert("purple")
colors.insert("red")

colors.remove("red")

var pastaTypesSet = Set<String>()
var pastaTypesArray = [String]()

pastaTypesSet.insert("Tagliatelle")
pastaTypesSet.insert("Fettuccine")
pastaTypesSet.insert("Spaghetti")
pastaTypesSet.insert("Linguine")

print(pastaTypesSet)
print(pastaTypesSet.count)

// Set won't print the same value again
pastaTypesSet.insert("Spaghetti")
print(pastaTypesSet)

pastaTypesSet.remove("Spaghetti")

var pastaTypesSet2 = Set<String>()
pastaTypesSet2.insert("Tortellini")
pastaTypesSet2.insert("Ziti")
pastaTypesSet2.insert("Tagliatelle")
pastaTypesSet2.insert("Lasagna")

let pastaSetUnion = pastaTypesSet.union(pastaTypesSet2)
print(pastaSetUnion)
print(pastaSetUnion.count)

// Exercise

let reserarvationsInPerson: Set<String> = ["000-345-3441", "000-345-3442"]
let reservationsOverPhone: Set<String> = ["000-345-6223", "000-345-3443"]
let reservationsOverInternet: Set<String> = ["000-345-3443", "000-345-5223"]

var inPersonAndOverPhone = reserarvationsInPerson.union(reservationsOverPhone)
print(inPersonAndOverPhone)

var allPhoneNumbers = inPersonAndOverPhone.union(reservationsOverInternet)
print(allPhoneNumbers)

var confirmationCodes: Set = ["LL3450", "LL3451", "LL3452", "LL3453", "LL3454"]
print("\(allPhoneNumbers.count) \(confirmationCodes.count)")

confirmationCodes.insert("LL3455")
print(confirmationCodes)

allPhoneNumbers.remove("000-345-3441")
confirmationCodes.remove("LL3452")
print(allPhoneNumbers)
print(confirmationCodes)
