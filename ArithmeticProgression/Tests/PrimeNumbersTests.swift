//
//  PrimeNumbersTests.swift
//  ArithmeticProgression
//
//  Created by Magnolia on 06.04.17.
//  Copyright © 2017 Magnolia. All rights reserved.
//

import XCTest
@testable import ArithmeticProgression

class PrimeNumbersTests: XCTestCase {
    var first100KPrimesList: [Int] = ListOfFirst100000Primes().primes
    var primeNumbers: [Int] = [233, 9787, 17939]
    var nonPrimeNumbers: [Int] = [9, 160, 40100]
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testNumberIsPrime_AgainstListOfKnownPrimeNumbers() {
        let findNumber:Int = 101
        XCTAssertTrue(first100KPrimesList.contains(findNumber), "Искомое число является простым, т.е. находится в списке первых 100000 известных простых чисел")
    }
    
    func testNonNumberIsNonPrime_AgainstListOfKnownPrimeNumbers() {
        let findNumber:Int = 102
        XCTAssertFalse(first100KPrimesList.contains(findNumber), "Искомое число не является простым, т.е. не находится в списке первых 100000 известных простых чисел")
    }
    
    func testNumberIsPrime_AgainstFormulaOne() {
        let integerEnd: Int = 101
        XCTAssertTrue(isPrime(integerEnd), "Данное число - простое")
    }
    
    func testNonNumberIsNonPrime_AgainstFormulaOne() {
        let integerEnd: Int = 102
        XCTAssertFalse(isPrime(integerEnd), "Данное число - сложное")
    }
    
    // "FormulaOne" (диапозон от 2 до _ number: Int)
    func isPrime(_ number: Int) -> Bool {
        return number > 1 && !(2..<number).contains { number % $0 == 0 }
    }
    
    func testPrimeNumbersArePrime_ByFormulaChecking() {
        for number in primeNumbers {
            XCTAssertEqual(isPrime(number), first100KPrimesList.contains(number))
        }
    }
    
    func testNonPrimeNumbersAreNonPrime_ByFormulaChecking() {
        for number in nonPrimeNumbers {
            XCTAssertEqual(isPrime(number), first100KPrimesList.contains(number))
        }
    }
}
