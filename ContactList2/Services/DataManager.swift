//
//  DataStore.swift
//  ContactList2
//
//  Created by Муслим Гаппаров on 14.02.2024.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let names = [
    "David",
    "Mike",
    "Aaron",
    "Tony",
    "Steve"
    ]
    let surnames = [
    "Bowie",
    "Pol",
    "Hendricks",
    "Scott",
    "Mattews"
    ]
    let numbers = [
    "12345",
    "67890",
    "13579",
    "24680",
    "10293"
    ]
    let emails = [
    "aka@mail.ru",
    "jaj@mail.ru",
    "yay@mail.ru",
    "tiu@mail.ru",
    "kwp@mail.ru"
    ]
    
    private init() {}
}
