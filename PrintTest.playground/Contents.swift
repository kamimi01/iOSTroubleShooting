/*
 func print(_ items: Any..., separator: String = " ", terminator: String = "\n")
 - seealso: https://developer.apple.com/documentation/swift/1541053-print
 */

// これだけだと思ってた
print("テスト1")

// 第一引数には、可変長引数を取れるし
print("テスト2", "テスト3", "テスト4")
// セパレーターも指定できる
print("テスト2", "テスト3", "テスト4", separator: ", ")
// 終了時の文字列も指定できる
print("テスト2", "テスト3", "テスト4", separator: ", ", terminator: "\n\n終了")
