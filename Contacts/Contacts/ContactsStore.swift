import UIKit
import Foundation

class ContactItems {
    var contacts = [[String]()]

    init() {
        for _ in 0..<3 {
            contacts.append([String]())
        }
        for _ in 0..<10 {
            createContact()
        }
    }

    var letters = ["A": 0, "B": 1, "C": 2, "D": 3]
    
    @discardableResult func createContact() -> String {
        let newContact = ["Ani", "Ceco", "Didi", "Deni", "Angel", "Albena", "Bilqn", "Dori"].randomElement()!
        contacts[letters[String(newContact.first!)]!].append(newContact)
        return newContact
    }
}
