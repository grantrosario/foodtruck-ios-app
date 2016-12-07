//
//  Constants.swift
//  api-client
//
//  Created by Grant Rosario on 12/4/16.
//  Copyright © 2016 Grant Rosario. All rights reserved.
//

import Foundation


// Callbacks
// Typealias for callbacks used in Data Service
typealias callback = (_ success: Bool) -> ()

// Base URL
let BASE_API_URL = "https://grosdev.com/api/v1"

// GET all food trucks
let GET_ALL_FT_URL = "\(BASE_API_URL)/foodtruck"

// Get all reviews for s specific food truck
let GET_ALL_FT_Reviews = "\(BASE_API_URL)/foodtruck/reviews"

// POST add new Food Truck
let POST_ADD_NEW_TRUCK = "\(BASE_API_URL)/foodtruck/add"

// POST add review for a specific true
let POST_ADD_NEW_REVIEW = "\(BASE_API_URL)/foodtruck/reviews/add"

// Boolean auth UserDefaults keys
let DEFAULTS_REGISTERED = "isRegistered"
let DEFAULTS_AUTHENTICATED = "isAuthenticated"

// Auth Email
let DEFAULTS_EMAIL = "email"

// Auth Token
let DEFAULTS_TOKEN = "authToken"

// REGISTER url
let POST_REGISTER_ACCOUNT = "\(BASE_API_URL)/account/register"

let POST_LOGIN_ACCT = "\(BASE_API_URL)/account/login"
