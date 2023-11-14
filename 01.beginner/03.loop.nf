// 遍历范围
for (i in 0..5) {
    println(i)
}

// 遍历数组
for (i in ['a', 'b', 'c']) {
    println(i)
}

// 遍历 map
def map = [name: 'zhangsan', age: 18]
for (i in map) {
    println(i)
}

for (i in map.values()) {
    println(i)
}
