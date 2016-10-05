// See problem1.README

// Note that the elements in this array are unique
let data = [19, 524, 95, 627, 230, 960, 150, 880, 659, 724, 420, 215, 470, 787, 883, 269, 678, 718, 329, 355]

let wantToFind = Int(readLine()!)!
var isContained = false
var num = data[0]
var location = 0

for x in 0..<data.count{
  num = data[x]
  if num == wantToFind{
    isContained = true
    location = x
    break
  }
}

if isContained == true{
  print(location)
}
else{
  print(-1)
}
