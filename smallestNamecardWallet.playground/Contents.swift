/*
 최소 직사각형 (https://programmers.co.kr/learn/courses/30/lessons/86491)
 
 by Doy Kim
 
*/

import Foundation
let sizes: [[Int]] = [[60, 50], [30, 70], [60, 30], [80, 40]]

solution(sizes)

// 가로, 세로 사이즈 배열에서 가로 사이즈를 세로보다 크게 정렬
func solution(_ sizes:[[Int]]) -> Int {
    let card = sizes
    var cardWallet: [Int] = [0, 0]
    for var namecard in card {
        if namecard[0] < namecard[1] {
            let swap = namecard[0]
            namecard[0] = namecard[1]
            namecard[1] = swap
        }
        if namecard[0] > cardWallet[0] {
            cardWallet[0] = namecard[0]
        }
        if namecard[1] > cardWallet[1] {
            cardWallet[1] = namecard[1]
        }
    }
    return cardWallet[0] * cardWallet[1]
}
