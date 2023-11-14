// 定义函数
def add(int a, int b) {
  println(a + b)
}

// 定义函数，返回值为int
def minus(int a, int b) {
  return a - b
}

// 定义函数，返回值为int，可以省略return, 最后一行为返回值
def multi(int a, int b) {
  a * b
}

add(1, 2)
println(minus(1, 2))
println(multi(1, 2))
println(multi 1, 2) // 函数调用可以省略括号
