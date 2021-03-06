//
//  RequestForm.swift
//  NetworkLayer
//
//  Created by abuzeid ibrahim on 5/22/18.
//  Copyright © 2018 abuzeid ibarhim. All rights reserved.
//

import Foundation

// MARK: -

/// A dictionary of parameters to apply to a `URLRequest`.
public typealias Parameters = [String: Any]



public protocol MyRequestBuilder{
    var mainURL: URL { get }
    var path: String { get }
    var method: MyHttpMethods { get }
    var headers: [String: String]? { get }
    var parameters: Parameters? { get }
    var urlRequest:URLRequest { get }
}

public extension MyRequestBuilder {
    var validate: Bool {
        return false
    }
}

///Done By Default
extension MyRequestBuilder {
    var mainURL: URL  {
        return URL(string: "https://f01098d1-94c3-403b-bbbd-f850b101b35b.mock.pstmn.io")!
    }
    
    var requestURL: URL {
        return mainURL.appendingPathComponent(path)
    }
    
    var urlRequest: URLRequest {
        var request = URLRequest(url: requestURL)
        request.httpMethod = method.rawValue
        return request
        
    }
}


