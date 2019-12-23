import UIKit

enum Check {
    case startFound
    case endFound
    case state
}

extension String {
    func getRange(positon: Int) -> (Int, Int) {
    
        var indexOfStart: Int = -1
        var indexOfEnd: Int = -1
        var flag: Check = Check.state
        
        for (i, v) in self.enumerated() {
            
            if (i == positon) {
                flag = Check.startFound
            }
            
            if v == "\n" {
                print(1)
                print(flag)
                switch flag {
                case .startFound:
                    indexOfEnd = i
                    flag = Check.endFound
                case .endFound:
                    flag = Check.state
                case .state:
                    indexOfStart = i
                }
            }
        }
        
        indexOfStart = indexOfStart == -1 ? 0 : indexOfStart
        indexOfStart = indexOfStart != 0 ? indexOfStart + 1 : indexOfStart
        indexOfEnd = indexOfEnd == -1 ? self.count : indexOfEnd
        indexOfEnd = indexOfEnd != 0 ? indexOfEnd - 1 : indexOfEnd
        
        return (indexOfStart, indexOfEnd)
    }
}

var str: String = """
gnwkwfffff
sdfgnwkwe
sdvsdsdvsdsdvsdsdvsd
"""

print(str.getRange(positon: 5))
