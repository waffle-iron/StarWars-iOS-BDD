//
//  CharactersInteractor.swift
//  StarWars
//
//  Created by Pedro Henrique Prates Peralta on 5/15/16.
//  Copyright © 2016 Pedro Henrique Peralta. All rights reserved.
//

import Foundation
import ObjectMapper
import Alamofire
import AlamofireObjectMapper


class CharactersInteractor: NSObject, CharactersUseCase {
    
    // MARK: Public
    
    override init() {
    }
    
    
    // MARK: CharactersPreseterOutput
    
    func fetchCharacters() {
        Alamofire.request(.GET, Api.peopleURL).responseObject { (response: Response<People, NSError>) in
            if let people = response.result.value {
                print(people)
            }
        }
    }
}