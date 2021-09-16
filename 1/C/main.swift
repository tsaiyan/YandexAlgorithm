//
//  main.swift
//  1C
//
//  Created by Torres Saiyan on 9/16/21.
//  Copyright © 2021 Torres Saiyan. All rights reserved.
//

struct Data {
	var first: Int
	var second: Int
	var year: Int
}

func parsing() -> Data? {

	guard let readedArray = readLine()?.split(separator: " ") else { return nil }
	let array: [Int] = readedArray.compactMap { Int($0) }
	if array.count != 3 { return nil }
	guard array.indices.contains(0), array.indices.contains(1), array.indices.contains(2)
		else { return nil }
	let first = array[0]
	let second = array[1]
	let year = array[2]
	guard (1...31).contains(first) || (1...31).contains(second) ||
		(1970...2069).contains(year) else { return nil }
	return Data(first: array[0], second: array[1], year: array[2])
}

func main() -> Int {
	guard let data = parsing(), !(data.first > 12 &&  data.second > 12)  else { return 0 }
	if data.second == data.first || data.first > 12 ||  data.second > 12 { return 1 }
	return 0
}

print(main())
