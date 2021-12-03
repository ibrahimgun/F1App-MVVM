//
//  ScheduleService.swift
//  F1App
//
//  Created by İbrahim Gün on 17.11.2021.
//

import Foundation
import Alamofire

public protocol ScheduleServiceProtocol {
    func fetchSchedule(completion: @escaping (Result<ScheduleResponse>) -> Void)
}

public class ScheduleService: ScheduleServiceProtocol {
    
    enum Error: Swift.Error {
        case serializationError(internal: Swift.Error)
        case networkError(internal: Swift.Error)
    }
    
    public init() { }
    
    let dataURL = "https://ergast.com/api/f1/"
    let year = Calendar.current.component(.year, from: Date())
    
    public func fetchSchedule(completion: @escaping (Result<ScheduleResponse>) -> Void) {
        let urlString = "\(dataURL)\(year).json"
        
        AF.request(urlString).responseData { (response) in
            switch response.result {
            case .success(let data):
                let decoder = Decoders.plainDateDecoder
                do {
                    
                    let response = try decoder.decode(ScheduleResponse.self, from: data)
                    completion(.succes(response))
                } catch {
                    completion(.failure(Error.serializationError(internal: error)))
                }
            case .failure(let error):
                completion(.failure(Error.networkError(internal: error)))
            }
        }
    }
}
