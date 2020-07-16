{a, b, _c} = {:hello, "world", 42}
# {:hello, "world", 42}
IO.inspect a
# :hello
IO.inspect b
# "world"

IO.inspect {:ok, result} = {:ok, 13}
# {:ok, 13}
IO.inspect result
# 13

[head | tail] = [1, 2, 3]
IO.inspect head
# 1
IO.inspect tail
# [2, 3]

list = [1, 2, 3]
IO.inspect [0 | list]
# [0, 1, 2, 3]

# The pin operator
x = 1
# 1
[^x, 2, 3] = [1, 2, 3]
# [1, 2, 3]
{y, ^x} = {2, 1}
# {2, 1}
IO.inspect y
# 2
[head | _] = [1, 2, 3]
# [1, 2, 3]
IO.inspect head
# 1
