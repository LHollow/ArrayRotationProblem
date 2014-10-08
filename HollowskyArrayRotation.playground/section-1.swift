// Playground - noun: a place where people can play
//Liam Hollowsky
//Array Rotator

import UIKit
import XCPlayground

XCPSetExecutionShouldContinueIndefinitely(continueIndefinitely: true)

var url = NSURL(string: "http://buckheit.com/smallestdata.txt")

let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
    var returnedString = NSString(data: data, encoding: NSUTF8StringEncoding)

var array = returnedString.componentsSeparatedByString(" ")

    var newIntArray: [Int] = []
    
    for character in array
    {
     newIntArray.append((character as String).toInt()!)
    }
println(newIntArray)
    
func arrayRotator (rotations: Int, websiteArray: AnyObject) -> [Int] {
    var counter = 0
    var counter2 = 0
    for var x = 0; x < rotations; x++ {
        newIntArray.insert(0, atIndex: 0)
        counter++
    }
  var a = counter
for var y = 0; y < a; y++ {
    newIntArray.insert(newIntArray[newIntArray.count - counter], atIndex: counter2)
    newIntArray.removeAtIndex(newIntArray.count - counter)
    counter2++
    counter--
        }

    let farray = newIntArray.filter( {$0 != 0})

    
    return farray
}

arrayRotator(4%array.count,array)

})

task.resume()

