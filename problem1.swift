// See problem1.README

// Note that the elements in this array are unique
let array = [19, 524, 95, 627, 230, 960, 150, 880, 659, 724, 420, 215, 470, 787, 883, 269, 678, 718, 329, 355]

let wantToFind = Int(readLine()!)!

func isInArray(find: Int) -> Int {
  var i = array.count - 1

  while i != -1 {
    if find == array[i] {
      return i
    }
    i -= 1
  }

  return -1

}

print(isInArray(find: wantToFind))
