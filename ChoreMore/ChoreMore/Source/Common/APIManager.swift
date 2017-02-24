//
//  APIManager.swift
//  ChoreMore
//
//  Created by HB on 24/02/2017.
//  Copyright © 2017 Nicholas Cross. All rights reserved.
//

import Foundation
import Alamofire

class APIManager {

  private var sessionManager: SessionManager?

  func login(_ completion: @escaping (_ state: Bool) -> ()) {
    let headers: HTTPHeaders = [
      "Content-Type": "application/json",
      "x-nab-key": "0c12ce1a-f5a5-4933-b5aa-c27e14c757d7"
    ]
    var defaultHeaders = Alamofire.SessionManager.defaultHTTPHeaders
    for (key, value) in headers {
      defaultHeaders[key] = value
    }

    let parameters: Parameters = [
      "loginRequest": [
        "brand": "nab",
        "lob": "nab",
        "credentials": [
          "apiStructType": "usernamePassword",
          "usernamePassword": [
            "username": "10055670",
            "password": "aaa111"
          ]
        ]
      ]
    ]

    Alamofire.request(
      "https://hackathon.api.extnp.nab.com.au/v2/auth?v=1",
      method: .post,
      parameters: parameters,
      encoding: JSONEncoding.default,
      headers: headers).responseJSON { [weak self] response in

        if let _ = response.result.value {
          if
            let json = response.result.value as? [String: Any],
            let loginResponse = json["loginResponse"] as? [String: Any],
            let tokens = loginResponse["tokens"] as? [Any] {
            for token in tokens {
              if let pair = token as? [String: String] {
                if let name = pair["name"], let value = pair["value"] {
                  defaultHeaders[name] = value
                }
              }
            }
          }

          let configuration = URLSessionConfiguration.default
          configuration.httpAdditionalHeaders = defaultHeaders

          self?.sessionManager = Alamofire.SessionManager(configuration: configuration)

          completion(true)
        } else {
          completion(false)
        }
    }
  }

  func customerProfile(_ completion: @escaping ([String:Any]) -> ()) {
    login { [weak self] success in
      if success {
        self?.sessionManager?.request("https://hackathon.api.extnp.nab.com.au/v2/customer/profile?v=1").responseJSON { response in
          if let json = response.result.value as? [String: Any] {
            completion(json)
          }
        }
      }
    }
  }

}
