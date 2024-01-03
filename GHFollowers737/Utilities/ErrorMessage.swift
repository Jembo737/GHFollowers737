//
//  ErrorMessage.swift
//  GHFollowers737
//
//  Created by User on 28.12.23.
//

enum GFError: String, Error {
    case invalidUsername = "This user name created an invalid request. Please try again"
    case noInternet = "Unable to complete your request. Please check your internet connection"
    case serverIsDown = "Invalid response from the server. Please try again."
    case invalidData = "The data recieved from the server was invalid. Please try again."
}
