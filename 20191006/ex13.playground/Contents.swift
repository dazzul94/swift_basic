import UIKit

// 콜렉션 Collection
// 1. 배열 - Array. (배열+리스트) 순서가 있음.              자바: ArrayList
// 2. 딕셔너리 - Dictionary 키+값(key, value) 순서가 없음.  자바: Map
// 3. 집합 - Set 순서가 없음. 데이터의 중복 허용하지 않음.  자바: Set

// Array : 같은 타입의 데이터가 나란히 나열된 형태의 자료형
//          Int배열, String배열, 구조체배열, 클래스배열
var myArray : Array<Int> = Array<Int>()
myArray.append(10)  // 맨끝에 추가
myArray.append(20)  // 맨끝에 추가
myArray.append(30)  // 맨끝에 추가

print(myArray)
dump(myArray)
print(myArray[0])   // 첫번째 요소만 출력
print(myArray[1])   // 두번째 요소만 출력
print(myArray[2])   // 세번째 요소만 출력
// print(myArray[3])   // Index out of range

// 배열이 어떤 요소를 포함하고 있는가?
myArray.contains(20)
myArray.contains(40)

// 배열의 갯수
myArray.count

// 배열의 요소 삭제
myArray.remove(at: 0)
print(myArray)

myArray.removeLast()    // 마지막 요소 삭제
print(myArray)

myArray.removeAll()
print(myArray)

myArray.insert(40, at: 0)   // 넣고 싶은 위치에 추가
print(myArray)

// 배열을 선언하는 방법들
var myArray2: Array<Int> = Array<Int>()
var myArray3: Array<Int> = []   // 2순위
var myArray4: [Int] = []    // 1순위
var myArray5 = Array<Int>() // 타입 추정에 의해 결정됨.
// var myArray6 = []   // empty collection literal requires an explicit type
var myArray6 = [Int]()  // 타입 추정

myArray4.append(10)
myArray4.append(20)

// 빈 배열인지 확인
if myArray4.isEmpty {
    print("빈 배열")
} else {
    print("빈 배열 아님")
}

for myInt in myArray4 {
    print(myInt)
}

// 연습문제
// names라는 문자열타입 배열을 만들고,
// "tom"을 추가하고
// "john"을 추가하고
// "hana"를 추가하고
// 배열의 개수를 출력하시오.
// 모든 요소를 출력하시오.
// "john"을 출력하시오.
// "tom"을 포함하고 있는지 true/false로 출력하시오.
var names: [String] = []
names.append("tom")
names.append("john")
names.append("hana")

print(names.count)  // 배열의 개수
for name in names { // 모든 요소 출력
    print(name)
}
print(names[1]) // "john" 출력
names.contains("tom")   // "tom"을 포함하는지 true/false 로 출력

// 배열 요소의 인덱스를 가져오기 "john" => 1
if let index = names.firstIndex(of: "john") {
    print("john의 위치는 \(index)")
}

// NS계열: NSArray 수정불가, NSMutableArray 수정가능
// Swift게열: Array 수정가능
// 가능하면 Swift 계열을 써라
var myNSArray = NSArray(objects: "a", "b", "c")
var myNSMutableArray = NSMutableArray(array: myNSArray) // NSArray -> NSMutableArray
if let mySwiftArray = myNSMutableArray as NSArray as? [String] { // NSMutableArray -> Array
    print(mySwiftArray)
}

// 배열의 값 비교 (배열이 Struct이므로 값 비교 가능, for문 안돌려도됨.)
let myArray7 = [1, 2, 3, 4, 5]  // 타입추정 [Int]
let myArray8 = [1, 2, 3, 4, 5]
if myArray7 == myArray8 {
    print("값이 같음")
} else {
    print("값이 다름")
}

// 배열의 값을 치환
var myArray9 = ["A", "B", "C"]
myArray9.replaceSubrange(0..<2, with: ["X", "Y"])
print(myArray9)

// 배열의 값을 정렬 sort
var myArray10 = ["A", "C", "B"]
let sortedArray = myArray10.sorted()
let reversSortedArray = Array(myArray10.sorted().reversed())

// 특정 범위에서 값을 추출해서 배열로 저장
let rangeArray = sortedArray[0...1]

// 딕셔너리 Dictionary 자바:Map
// key-value로 이루어진 데이터 타입 (key는 스트링)
// ["key1": value1, "key2": value2,  ]

let myDic = ["key1": "value1", "key2": "value2"]    // 타입 추정에 의해서 [String:String]
print(myDic)

// 요소에 접근하는 법
print(myDic["key1"])    // optional로 감싸져있는 데이터는 ->
print(myDic["key1"]!)   // 언래핑하여 순수한 데이터를 뽑아낸다.

print(myDic["key2"]!)

var nameDic = ["name1": "홍길동", "name2": "변사또", "name3": "춘향이"]
// 순서가 없음. 인덱스가 없음. key값으로 뽑는다.
// 새로운 요소를 추가함.
nameDic["name4"] = "이몽룡"
print(nameDic)

// 딕셔너리 요소를 출력
for name in nameDic {
    print(name)
}
for (key, value) in nameDic {
    print(key)
    print(value)
}

// 딕셔너리 요소를 삭제
nameDic.removeValue(forKey: "name2")
print(nameDic)

// 딕셔너리의 개수
nameDic.count

// NS계열: NSDictionary(수정불가), NSMutableDictionary(수정가능)
// Swift계열: Dictionary
