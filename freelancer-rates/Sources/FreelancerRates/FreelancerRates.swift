
import Swift
import Foundation  

func dailyRateFrom(hourlyRate: Int) -> Double{
    return Double(hourlyRate) * 8
}

func monthlyRateFrom(hourlyRate: Int, withDiscount: Double) -> Double {
    let monthlyRate: Double = dailyRateFrom(hourlyRate: hourlyRate) * 22
    let discount: Double = monthlyRate * (withDiscount * 0.01)
    return round(monthlyRate - discount)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount: Double) -> Double{
    let actualBudget: Double = budget + (budget * (withDiscount * 0.01))
    let dailyRate: Double = dailyRateFrom(hourlyRate: hourlyRate)
    return round(actualBudget / dailyRate)
}

