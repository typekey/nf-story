// 使用 println 打印字符串 
println("Hello world!")


// 单引号不支持差值表达式 
def hi = 'Hi, ${name}'
println(hi)


// 双引号支持插值表达式
// 使用 def 定义变量
def name = "Tom"
def greeting = "Hello, ${name}." // 使用 ${} 进行差值表达式
println(greeting)


// 三引号支持多行字符串，换行和缩进 
// from: https://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=Hello
def slogan ="""

██╗  ██╗███████╗██╗     ██╗      ██████╗ 
██║  ██║██╔════╝██║     ██║     ██╔═══██╗
███████║█████╗  ██║     ██║     ██║   ██║
██╔══██║██╔══╝  ██║     ██║     ██║   ██║
██║  ██║███████╗███████╗███████╗╚██████╔╝
╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝ 
                                         
"""
println(slogan)


// 使用 process 和 workflow
// process 是一个任务，workflow 是一个工作流，可以将多个任务组合起来
process bashHello {
    """
    echo 'Hello world!'
    """
}

// 在 process 中使用其他语言，如 python
process pythonHello {
    script:
    """
    #!/usr/bin/python3

    x = 'Hello'
    y = 'python!'
    print(f'{x} {y}')
    """
}

// workflow 可以将多个 process 组合起来
// 每个 Nextflow 脚本只能有一个 workflow
workflow {
    bashHello()
    pythonHello()
}