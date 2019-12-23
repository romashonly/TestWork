import UIKit

extension String {
    func getRange(positon: Int) -> (Int, Int) {
    
        var indexOfStart: Int = -1
        var indexOfEnd: Int = -1
        var flag: Bool = true
        
        for (i, v) in self.enumerated() {
            if (i == positon) {
                flag = false
            }
            if v == "\n" && flag {
                indexOfStart = i
            }
            else if v == "\n" && !flag {
                indexOfEnd = i
            }
        }
        
        indexOfStart = indexOfStart == -1 ? 0 : indexOfStart
        indexOfEnd = indexOfEnd == -1 ? self.count - 1 : indexOfEnd
        
        return (indexOfStart, indexOfEnd)
    }
}

var str: String = """
gnwkw
sdf
sdvsd
"""

print(str.getRange(positon: 7))
