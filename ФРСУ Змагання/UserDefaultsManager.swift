//
//  UserDefaultsManager.swift
//  ФРСУ Змагання
//
//  Created by Леонід Шевченко on 28.07.2021.
//

import Foundation

struct UserDefaultsManager{
    let userDefaults = UserDefaults.standard
    
    static let shared = UserDefaultsManager()
    
    func save(_ value: Any?, for key: String) {
        userDefaults.setValue(value, forKey: key)
    }
    
    func getInfo(for key: String) -> String? {
        return self.userDefaults.string(forKey: key)
    }
    
    func removeVaue(for key: String){
        userDefaults.removeObject(forKey: key)
    }
}
