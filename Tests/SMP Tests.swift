/*
*   ————————————————————————————————————————————————————————————————————————————
*   SMP Tests.swift
*   ————————————————————————————————————————————————————————————————————————————
*   Created by Marcel Kröker on 05.09.17.
*   Copyright © 2017 Marcel Kröker. All rights reserved.
*/



import Foundation

public class SMP_Tests
{
	//
	//
	//	MARK: - BInt Tests
	//	————————————————————————————————————————————————————————————————————————————————————————
	//	||||||||        BInt Tests        ||||||||||||||||||||||||||||||||||||||||||||||||||||||
	//	————————————————————————————————————————————————————————————————————————————————————————
	//
	//
	//


	static func testSteinGcd()
	{
		for a in 0...100
		{
			for b in 0...100
			{
				let steinGCD = BIntMath.gcd(BInt(a), BInt(b))
				let euclidGCD = BIntMath.gcdEuclid(BInt(a), BInt(b))
				precondition(steinGCD == euclidGCD, "SteinGcd does not work")
			}
		}

		let bigGCD = BIntMath.gcd(BInt("43875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583753489275632965239465894326503252306527465108761576016654310654156135610860276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694732645626564387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375348927563296523946589432650325230652746510876157601665431065415613561086027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369473264562656")!, BInt("4387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369474387528053452306543657364752644734658375027660564376576374626234567890987654323456765454829654386452369432087620650236402340623464743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694745624625443875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694743875280534523065436573647526447346583750276605643765763746262345678909876543234567654548296543864523694320876206502364023406234647438752805345230654365736475264473465837502766056437657637462623456789098765432345676545482965438645236947438752805345230654365736475264473465837502766056437657637462623456789098765432345676545482965438645236947438752805345230654365736475264473465837502766056437657637462623456789098765432345676545482965438645236947438752805345230654365736475264473465837502766056437657637462623456789098765432345676545482965438645236947438752805345230654365736475264473465837502766056437657637462623456789098765432345676545482965438645236947438752805345230654365736475264473465837502766056437657637462623456789098765432345676545482965438645236947438752805345230654365736475264473465837502766056437657637462623456789098765432345676545482965438645236947456246254")!)

		precondition(bigGCD == BInt(66))
	}

	static func testBaseConversionRandom()
	{
		let iterations = 100
		let maxStringSize = 9

		let chars = [
			"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b",
			"c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n",
			"o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
			"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L",
			"M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X",
			"Y", "Z"
		]

		var run = 1

		while run <= iterations
		{
			let fromBase = math.random(2..<chars.count)
			let   toBase = math.random(2..<chars.count)

			// Generate a random number with a start base
			var randNum = ""

			for _ in 0..<math.random(1...maxStringSize)
			{
				randNum.append(chars[math.random(0..<fromBase)])
			}

			// Trim zeros
			while randNum[0] == "0" && randNum.count > 1
			{
				randNum = randNum[1..<randNum.count]
			}

			// Convert the random number to a BInt type
			let b1 = BInt(number: randNum, withBase: fromBase)
			// Get the number as a string with the second base
			let s1 = b1!.asString(withBase: toBase)
			// Convert that number to a BInt type
			let b2 = BInt(number: s1, withBase: toBase)
			// Get the number back as as string in the start base
			let s2 = b2!.asString(withBase: fromBase)

			precondition(b1 == b2)
			precondition(s2 == randNum)

			run += 1
		}
	}

	static func testBIntRandom()
	{
		let iterations = 1_000

		// Get a appropriate maximum number magnitude
		let m = Int(sqrt(Double(iterations))) / 10
		// Arithmetric operators

		let arithmetricInt:  [(Int,  Int ) -> Int ] = [(+), (-), (*), (/), (%)]
		let arithmetricBInt: [(BInt, BInt) -> BInt] = [(+), (-), (*), (/), (%)]

		for _ in 0..<iterations
		{
			let op = math.random(0..<arithmetricInt.count)
			let (x, y) = (math.random((-m)...m), math.random((-m)...m))

			if (op > 2 && y == 0) { continue }

			let resInt = (arithmetricInt[op])(x, y)
			let resBInt = (arithmetricBInt[op])(BInt(x), BInt(y))

			if resInt.description != resBInt.description { fatalError() }
		}

		// Comparison operators

		let compareInt:  [(Int,   Int) -> Bool] = [(<), (<=), (>), (>=), (==), (!=)]
		let compareBInt: [(BInt, BInt) -> Bool] = [(<), (<=), (>), (>=), (==), (!=)]

		for _ in 0..<iterations
		{
			let op = math.random(0..<compareInt.count)
			let (x, y) = (math.random((-m)...m), math.random((-m)...m))

			let resInt = (compareInt[op])(x, y)
			let resBInt = (compareBInt[op])(BInt(x), BInt(y))

			if resInt != resBInt { fatalError() }
		}

		// Shift operators

		let shiftInt:  [(UInt64,  UInt64) -> UInt64] = [(<<), (>>)]
		let shiftBInt: [(BInt,       Int) -> BInt  ] = [(<<), (>>)]

		for _ in 0..<iterations
		{
			let op = math.random(0..<shiftInt.count)
			let (x, y) = (math.random(0...58), math.random(0...58))

			let resInt = (shiftInt[op])(UInt64(x), UInt64(y))
			let resBInt = (shiftBInt[op])(BInt(x), y)

			if resInt.description != resBInt.description { fatalError() }
		}

	}

	static func testBInt()
	{
		//
		////
		//////
		//"MARK": - Initialization
		//////
		////
		//

		// Test if BInt stores limbs correctly
		precondition(BInt(limbs: [0]).rawValue.limbs == [0])

		// Test some interesting edge cases
		for n in [0,1,-1, Int.max, Int.min]
		{
			precondition(n.description == BInt(n).description)
		}
        
        //
        ////
        //////
        //"MARK": - Hexadecimal
        //////
        ////
        //
        
        XCTAssert(BInt("ffff",radix:16) == 65535)
        XCTAssert(BInt("ff",radix:16) == 255.0)
        XCTAssert(BInt("ff",radix:16) != 100.0)
        XCTAssert(BInt("ffff",radix:16)! > 255.0)
        XCTAssert(BInt("f",radix:16)! < 255.0)
        XCTAssert(BInt("0",radix:16)! <= 1.0)
        XCTAssert(BInt("f")! >= 1.0)
        XCTAssert(BInt("rfff",radix:16) == nil)
        
		//
		////
		//////
		//"MARK": - Negation
		//////
		////
		//

		for n in -4...4
		{
			precondition((-n).description == (-BInt(n)).description)
		}

		//
		////
		//////
		//"MARK": - String conversion
		//////
		////
		//

		// Get string representation and init with string
		for n in -4...4
		{
			precondition(
				n.description == BInt(n).description &&
				n.description == BInt(n.description)!.description
			)
		}



		// Alternating series

		var b = BInt(0)
		for k in 0...100
		{
			b += (BInt(-1) ** k) * (BInt(5) ** k)
		}
		assert(b.rawValue.limbs == [0x28e3f37dc8c26cc9,0x9f59e568b211b961,0xd92c3dea0eea4010,0xf3d659f514])
		assert(b.description == "6573840876841765045097738044023218580610053625908525039752324422200521")

		b = BInt(0)
		for k in 1...138
		{
			b += (BInt(k) ** k) - (BInt(137) ** k)
		}
		assert(b.rawValue.limbs == [17152098566286916563, 4974948639188066814, 4489317707884913023, 9306023348854241191, 458651883002965321, 3683521711743239055, 16851376351636449383, 741781077320468085, 800339803456222032, 13955889474532705287, 9986965365556055439, 6943506609237153382, 14193507606682829060, 2267111281450088010, 16370502465740827650, 1306853])
		assert(b.description == "12735701500187047591959419733566858766853126946820718978070969024692885331213304930991162556374421032376469699828008508881075741782571348017377682034125474151722103219051041832160135737768757033144950631943320498343308408527570876037282172430879499586152728823468776739519354613957714873403358163")


		// 85 factorial
		b = BInt(85).factorial()
		assert(b.rawValue.limbs == [0x0000000000000000,0xb8c394eaa19e0000,0x38c8ccdfca313bc3,0x1114618c49a52ac4,0x0c70dd91509cc80b,0x72d84574931b466f,0x680a8222a98])
		assert(b.description == "281710411438055027694947944226061159480056634330574206405101912752560026159795933451040286452340924018275123200000000000000000000")


		// Adding

		b = BInt(1) + BInt(limbs: [UInt64.max, UInt64.max, UInt64.max, UInt64.max])
		assert(b.rawValue.limbs == [0,0,0,0,1])
		b = BInt(limbs: [UInt64.max, UInt64.max, UInt64.max, UInt64.max]) + BInt(1)
		assert(b.rawValue.limbs == [0,0,0,0,1])

		// Subtracting

		b = BInt(limbs: [0,0,0,1]) - BInt(limbs: [0,0,0,0,0,0,1])
		assert(b.rawValue.limbs == [0, 0, 0, 18446744073709551615, 18446744073709551615, 18446744073709551615])
		assert(b.description == "-39402006196394479212279040100143613805079739270465446667942016302510335090733374821991058588468813285362163955793920")

		b = -BInt(limbs: [0,0,0,1]) + BInt(limbs: [0,0,0,0,0,0,1])
		assert(b.rawValue.limbs == [0, 0, 0, 18446744073709551615, 18446744073709551615, 18446744073709551615])
		assert(b.description == "39402006196394479212279040100143613805079739270465446667942016302510335090733374821991058588468813285362163955793920")


		b = BInt(342564674474362) * BInt(3456293476583265)
		assert(b.rawValue.limbs == [8710518073375159610, 64184988145])
		assert(b.description == "1184004049693607094719600751930")

		b = BInt(limbs: [UInt64.max, UInt64.max]) + BInt(limbs: [UInt64.max, UInt64.max])
		assert( b.rawValue.limbs == [UInt64.max - 1, UInt64.max, 1])


		b = BInt(limbs: [UInt64.max, UInt64.max]) - BInt(limbs: [UInt64.max, UInt64.max])
		assert( b.rawValue.limbs == [0])



		b = BInt(limbs: [UInt64.max]) * BInt(limbs: [UInt64.max])
		assert(b.rawValue.limbs == [1, 18446744073709551614])
		assert(b.description == "340282366920938463426481119284349108225")

		b = BInt(limbs: [UInt64.max, UInt64.max, UInt64.max]) * BInt(limbs: [UInt64.max, UInt64.max, UInt64.max])
		assert(b.rawValue.limbs == [1, 0, 0, 18446744073709551614, 18446744073709551615, 18446744073709551615])
		assert(b.description == "39402006196394479212279040100143613805079739270465446667935739200774948409969539032567850922052710929917699921281025")

		b = BInt(limbs: [UInt64.max]) * BInt(limbs: [1])
		assert(b.rawValue.limbs == [UInt64.max])
		assert(b.description == "18446744073709551615")

		b = BInt(Int.max) * BInt(1)
		assert(b.description == String(Int.max))
		assert(b.description == "9223372036854775807")

		b = BInt(limbs: [234234, UInt64.max]) + BInt(limbs: [UInt64.max,0,0,3458235])
		assert(b.rawValue.limbs == [234233, 0, 1, 3458235])
		assert(b.description == "21707692919874957951323661576248931189428192643860687825473344249")

		//		b = BIntMath.combinations(50_000, 50)
		//		assert(b.description == "284958500315333290867708487072990268397101930544468658476216100935982755508148971449700622210078705183923286686402942943816349032142836981589618876226813174803825580124000")

		for _ in 0..<100_0
		{
			let a = math.random(-10...10)
			let b = math.random(-10...10)
			let c = math.random(-10...10)
			let d = math.random(-10...10)


			if b != 0 && d != 0
			{
				let a1 = BDouble(a, over: b) + BDouble(c, over: d)
				var a1Int = (a * d) + (b * c)
				var under = b * d

				let sign = (a1Int < 0) == (under < 0)

				if sign
				{
					a1Int = abs(a1Int)
					under = abs(under)
				}
				else
				{
					a1Int = -abs(a1Int)
				}

				a1Int = a1Int / math.gcd(abs(a1Int), abs(b * d))
				assert(BInt(sign:  a1.sign, limbs: a1.numerator).description == String(a1Int))
			}

			if b != 0 && d != 0
			{
				let a1 = BDouble(a, over: b) - BDouble(c, over: d)
				var a1Int = (a * d) - (b * c)
				var under = b * d

				let sign = (a1Int < 0) == (under < 0)

				if sign
				{
					a1Int = abs(a1Int)
					under = abs(under)
				}
				else
				{
					a1Int = -abs(a1Int)
				}

				a1Int = a1Int / math.gcd(abs(a1Int), abs(b * d))

				assert(BInt(sign:  a1.sign, limbs: a1.numerator).description == String(a1Int))
			}

			if b != 0 && d != 0
			{
				let a1 = BDouble(a, over: b) * BDouble(c, over: d)
				var a1Int = a * c
				var under = b * d

				let sign = (a1Int < 0) == (under < 0)

				if sign
				{
					a1Int = abs(a1Int)
					under = abs(under)
				}
				else
				{
					a1Int = -abs(a1Int)
				}

				a1Int = a1Int / math.gcd(abs(a1Int), abs(b * d))

				assert(BInt(sign:  a1.sign, limbs: a1.numerator).description == String(a1Int))
			}
		}
	}
}
