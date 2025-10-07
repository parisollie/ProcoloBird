//
//  main.swift
//  ProcoloBird
//
//  Created by Paul F on 22/09/25.
//

import Foundation
/*
 // Protocol defining the ability to fly
 protocol CanFly {
 func fly()
 }
 
 /**I'm going to create a new class and my class is going to be a Bird class
  and I'm going to define a bunch of things that birds can do.*/
 class Bird {
 // Property to track if the bird is female
 var isFemale = true
 
 func layEgg() {
 /***
  Now, in addition, if a bird is female, then they can also lay eggs, right?
  So let's create this layEgg functionality where we check to make sure. If our bird is female, then in
  that case, we can go ahead and print "The bird makes a new bird in a shell."
  
  */
 if isFemale {
 // Only female birds can lay eggs
 print("The bird makes a new bird in a shell.")
 }
 }
 }
 
 // Eagle class inherits from Bird and conforms to CanFly protocol
 class Eagle: Bird, CanFly {
 // Implementation of the fly method from CanFly protocol
 func fly() {
 print("The bird flaps its wings and lifts off into the sky.")
 }
 
 // Eagle-specific method for soaring
 func soar() {
 print("The eagle flaps its wings and lifts off into the sky.")
 }
 }
 
 // Penguin class inherits from Bird but cannot fly
 class Penguin: Bird {
 // Penguin-specific method for swimming
 func swim() {
 print("The penguin paddles through the water")
 }
 }
 
 // Struct that demonstrates flying capability
 struct FlyingMuseum {
 // Method that takes any object conforming to CanFly protocol
 func flyingDemo(flyingObject: CanFly) {
 // Calls the fly method on the flying object
 flyingObject.fly()
 }
 }
 
 // Airplane struct conforms to CanFly protocol (not a bird)
 struct Airplane: CanFly {
 // Implementation of fly method for airplane
 func fly() {
 print("The airplane uses its engine to lift off into the air")
 }
 }
 
 // Create instances of the classes and struct
 let myEagle = Eagle()      // Eagle instance
 let myPenguin = Penguin()  // Penguin instance
 let myPlane = Airplane()   // Airplane instance
 
 // Demonstrate flying and swimming capabilities
 myEagle.fly()      // Eagle can fly
 myPenguin.swim()   // Penguin can swim
 
 // Create FlyingMuseum instance
 let museum = FlyingMuseum()
 
 // Demonstrate flying with different objects that conform to CanFly
 museum.flyingDemo(flyingObject: myEagle)   // Eagle demonstrates flying
 museum.flyingDemo(flyingObject: myPlane)   // Airplane demonstrates flying
 */


// ----------------      Extension -----------------------------

// Protocol defining the ability to fly
protocol CanFly {
    func fly()
}
/**
 we can say that whenever a class or a struct adopts this extension, it automatically has access to
 a default version of the fly method which just says, "The object takes off into the air."
 */
extension CanFly{
    func fly(){
        print ("The object take off into the air")
    }
}
/**I'm going to create a new class and my class is going to be a Bird class
 and I'm going to define a bunch of things that birds can do.*/
class Bird {
    // Property to track if the bird is female
    var isFemale = true
    
    func layEgg() {
        /***
         Now, in addition, if a bird is female, then they can also lay eggs, right?
         So let's create this layEgg functionality where we check to make sure. If our bird is female, then in
         that case, we can go ahead and print "The bird makes a new bird in a shell."
         
         */
        if isFemale {
            // Only female birds can lay eggs
            print("The bird makes a new bird in a shell.")
        }
    }
}

// Eagle class inherits from Bird and conforms to CanFly protocol
class Eagle: Bird, CanFly {
    // Eagle-specific method for soaring
    func soar() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
}

// Penguin class inherits from Bird but cannot fly
class Penguin: Bird {
    // Penguin-specific method for swimming
    func swim() {
        print("The penguin paddles through the water")
    }
}

// Struct that demonstrates flying capability
struct FlyingMuseum {
    // Method that takes any object conforming to CanFly protocol
    func flyingDemo(flyingObject: CanFly) {
        // Calls the fly method on the flying object
        flyingObject.fly()
    }
}

// Airplane struct conforms to CanFly protocol (not a bird)
struct Airplane: CanFly {
    
}

/**
 the CanFly protocol, I can simply say myPlane.fly and it will already know how to fly because
 it's just going to look at the default implementation that comes from that protocol CanFly.

 */
let myPlane = Airplane()
myPlane.fly()
// Puedes probar también con el águila
let myEagle = Eagle()
myEagle.fly()
myEagle.soar()

// Y el pingüino
let myPenguin = Penguin()
myPenguin.swim()
myPenguin.layEgg()
