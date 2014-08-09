// Playground - noun: a place where people can play

import UIKit

// Variables v Constants

let tutorialTeam = 53
let editorialTeam = 21
var totalTeam = tutorialTeam + editorialTeam

totalTeam+1

// Explicit v Inferred Typing

let tutorialTeamExplicit: Int = 32
let tutorialTeamInferred = 32

// Basic Types and Control Flow

// Floats and Doubles
let priceInferred = 19.99
let priceExplicit: Double = 19.99

// Bools
let onSaleInferred = true
let onSaleExplicit: Bool = true

// Strings
let nameInferred = "Toy Solders"
let nameExplicit: String = "Toy Soldiers"

// If statements and String interpolation
if onSaleInferred {
    println("\(nameInferred) at sale price \(priceInferred / 2)!")
} else {
    println("\(nameInferred) at regual price \(priceInferred)!")
}

