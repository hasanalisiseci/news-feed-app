//
//  APICaller.swift
//  NewsFeedApp
//
//  Created by Hasan Ali Şişeci on 21.10.2021.
//

import Foundation

final class Service {
    
    static let shared = Service()
    
    let apiKey = "&apiKey=5274b9f89c124c99a6fd7c970e8f49b0"
    
    
    
    struct Constants {
        static let starterURL = URL(string: "https://newsapi.org/v2/top-headlines?country=tr&category=business&apiKey=5274b9f89c124c99a6fd7c970e8f49b0")
        static let searchURLString = "https://newsapi.org/v2/everything?q="
    }
    
    private init() {}
    
    public func getTopStories(completion: @escaping (Result<[Article], Error>) -> Void) {
        guard let url = Constants.starterURL else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
            }
            else if let data = data {
                do {
                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                    print("Articles: \(result.articles.count)")
                    completion(.success(result.articles))
                } catch {
                    completion(.failure(error))
                }
            }
            
        }
        task.resume()
    }
    
    public func search(with query: String, completion: @escaping (Result<[Article], Error>) -> Void) {
        guard !query.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        let urlString = Constants.searchURLString + query + apiKey
        
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
            }
            else if let data = data {
                do {
                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                    print("Articles: \(result.articles.count)")
                    completion(.success(result.articles))
                } catch {
                    completion(.failure(error))
                }
            }
            
        }
        task.resume()
    }
    
}
