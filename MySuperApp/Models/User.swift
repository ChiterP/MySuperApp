//
//  File.swift
//  MySuperApp
//
//  Created by 18316409 on 02.04.2021.
//

struct Person {
    let name: String
    let sername: String
    let login: String
    let password: String
    let discription: String
    
    static func getPersons() -> Person {
        Person(
            name: "Алексей",
            sername: "Сергейцев",
            login: "User",
            password: "Password",
            discription: "Много о себе: я работаю в крупной частной компании, взращиваю сына, живу... увлекаюсь всем что связано с миром ИТ и спортом, сейчас образовываюсь как разработчик, хочу работать что бы жить, а не жить что бы работать, увлекаюсь рок музыкой"
        )
    }
}
