//
//  main.swift
//  context1-1
//
//  Created by Torres Saiyan on 9/15/21.
//  Copyright © 2021 Torres Saiyan. All rights reserved.
//

import Foundation

struct Codes {
	var ofProgram: Int
	var ofInteractor: Int
	var ofChecker: Int
}

func parsing() -> Codes? {
	guard let program = readLine() ?? nil,
		  let intprogram = Int(program),
		  let interactor =  readLine() ?? nil,
		  let intInteractor = Int(interactor),
		  let checker = readLine() ?? nil,
		  let intCker = Int(checker)
		  else { return nil }
	return Codes(ofProgram: intprogram, ofInteractor: intInteractor, ofChecker: intCker)
}

func main() {

	guard let code = parsing() else { return }
	var result: Int = 0

	if !(-128...127).contains(code.ofProgram) ||
		!(0...7).contains(code.ofInteractor) ||
		!(0...7).contains(code.ofChecker) { return }

	switch code.ofInteractor {
	case 0 where code.ofProgram != 0:
		result = 3
	case 0:
		result = code.ofChecker
	case 1:
		result = code.ofChecker
	case 4 where code.ofProgram != 0:
			result = 3
	case 4:
		result = 4
	case 6:
		result = 0
	case 7:
		result = 1
	default:
		result = code.ofInteractor
	}
	print(result)
}
main()




