/*
 부족한 금액 계산하기 (https://programmers.co.kr/learn/courses/30/lessons/82612)
 
 by Doy Kim
 
*/

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
//    var answer:Int64 = 0
//
//    for index in 1...count {
//        answer += Int64((index * price))
//    }
//    if money < answer {
//        answer -= Int64(money)
//    }
//    else {
//        answer = 0
//    }
    
    // 1~n까지 숫자의 합은 (n+1)*n/2 ㅏ
    
    return max(0, Int64((count+1)*count/2*price - money))
}
