import Foundation

//func isPalindrome(word: String) -> Bool {
//    let reversed = String(word.reversed())
//    if word.lowercased() == reversed.lowercased() {
//            return true
//    } else {
//        return false
//    }
//}
//
//isPalindrome(word: "taCocat")

/* Accounting for case, punctuation, and spacing. */

//func palindrome(word: String) -> Bool {
//    let string = word.components(separatedBy: CharacterSet.punctuationCharacters).joined().replacingOccurrences(of: " ", with: "").lowercased()
//    if string == String(string.reversed()) {return true} else {return false}
//}

func palindrome(word: String) -> Bool {
    let depunctuated = word.components(separatedBy: CharacterSet.punctuationCharacters).joined()
    let despaced = depunctuated.replacingOccurrences(of: " ", with: "")
    let leveled = despaced.lowercased()
    
    if leveled == String(leveled.reversed()) {return true} else {return false}
}
palindrome(word: "A man; a plan; a canal; Panama!")


