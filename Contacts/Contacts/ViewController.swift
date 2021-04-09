//
//  ViewController.swift
//  Contacts
//
//  Created by Daniela Palova on 9.04.21.
//

import UIKit

class ContactsViewController: UITableViewController {

    var contactItems = ContactItems()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactItems.contacts[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactItems", for: indexPath)
        let item = contactItems.contacts[indexPath.section][indexPath.row]
        cell.textLabel?.text = item
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) ->String? {
        switch section {
        case 0:
            return "A"
        case 1:
            return "B"
        case 2:
            return "C"
        case 3:
            return "D"
        default:
            return "None"
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contactItems.contacts.count
    }

}

