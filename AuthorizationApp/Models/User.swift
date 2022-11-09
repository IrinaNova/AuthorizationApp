//
//  User.swift
//  AuthorizationApp
//
//  Created by Irunchik on 8.11.22.
//

struct User {
    let userName: String
    let password: String
}

struct Person {
    let firstName: String
    let lastName: String
    let age: String
    let country: String
    let city: String
    let hobbies: String
}
let user = User(userName: "Ira", password: "1111")
let person = Person(
    firstName: "Irina",
    lastName: "Baranova",
    age: "35",
    country: "Belarus",
    city: "Vitebsk",
    hobbies: """
    * плаванье, занятия в тренажерном зале, фитнесс, езда на велосипеде;
    * танцы;
    * изучение IOS разработки
    * изучение современной литературы по саморазвитию и тайм-менеджменту
    * интерес к компьютерным, программным и техническим новшествам.
""")
