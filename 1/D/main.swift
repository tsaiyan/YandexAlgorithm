//
//  main.swift
//  1D
//
//  Created by Torres Saiyan on 9/16/21.
//  Copyright © 2021 Torres Saiyan. All rights reserved.


struct Data {
	var count: Int
	var array: [Int]
}

func parsing() -> Data? {

	guard let count = Int(readLine() ?? ""), let readedArray = readLine()?.split(separator: " "),
	count > 0 else { return nil }
	let array: [Int] = readedArray.compactMap { Int($0) }
	for (_ , element) in array.enumerated() {
		if element < 0 { return nil }
	}
	return Data(count: count, array: array)
}

func main() -> Int {
	guard let data = parsing() else { return 0 }
	let array = data.array

	return array.reduce(0, +) / array.count
}

print(main())
