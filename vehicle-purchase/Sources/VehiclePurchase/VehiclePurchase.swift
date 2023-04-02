
import Swift
import Foundation


func canIBuy(vehicle: String,price: Double, monthlyBudget: Double) -> String {

  // price of the vehicle divided by 5 year warranty at 0% interest
  let monthlyPrice: Double = price / 60

  // ehhh...might not wanna spend that money
  let pushingItBudget: Double = monthlyBudget + (monthlyBudget * 0.1)
    
  // checking whether monthly budget is fine off the rip
  guard monthlyPrice > monthlyBudget else{
    return "Yes! I'm getting a \(vehicle)"
  }

  // checking if the price is within 10% above monthly budget
  if monthlyPrice < pushingItBudget {
    return "I'll have to be frugal if I want a \(vehicle)"
  }

  // you're not getting that car man :(
  return "Darn! No \(vehicle) for me"
}

func licenseType(numberOfWheels wheels: Int) -> String {
    if(wheels == 2 || wheels == 3){
        return "You will need a motorcycle license for your vehicle"
    }else if(wheels == 4 || wheels == 6){
        return "You will need an automobile license for your vehicle"
    }else if(wheels == 18){
        return "You will need a commercial trucking license for your vehicle"        
    }else{
         return "We do not issue licenses for those types of vehicles"
    }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    
    // returning 25$ registration fee if the car is old
    guard yearsOld < 10 else{
        return 25
      }

    var baseCost: Double;

    // determining base cose based upon comparison
    if(msrp > 25_000){
        baseCost = Double(msrp)
    }else{
        baseCost = 25_000;
    }

    // determining the discount then multiplying it by number of years old
    let discount: Double = (baseCost * 0.1) * Double(yearsOld)
    
    return Int(floor((baseCost - discount) / 100.0))
    
    
}
