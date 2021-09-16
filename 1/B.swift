//
//  main.swift
//  context1-2
//
//  Created by Torres Saiyan on 9/15/21.
//  Copyright © 2021 Torres Saiyan. All rights reserved.
//

import Foundation

func parsing() -> [Int]? {

	guard let readedArray = readLine()?.split(separator: " ") else { return nil }
	let array: [Int] = readedArray.compactMap { Int($0) }
	if array.count != 3 { return nil }
	return array
}

func main() {
	guard let array = parsing(),
		  let total = array.first,
		  let start = array.dropFirst().first,
		  let finish = array.last,
		  !(start > total || finish > total),
		  !(start < 1 || finish < 1 || total < 1),
		  !(finish == start) else { return }

		let res1 = abs(finish - start) - 1
		let res2 = total - 2 - res1
	print(min(res1, res2))
}

main()


