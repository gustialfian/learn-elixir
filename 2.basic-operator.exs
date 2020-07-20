IO.inspect [1, 2, 3] ++ [4, 5, 6]
# [1, 2, 3, 4, 5, 6]
IO.inspect [1, 2, 3] -- [2]
# [1, 3]
IO.inspect "foo" <> "bar"
# "foobar"
IO.inspect true and true
# true
IO.inspect false or is_atom(:example)
# true

# `or` and `and` are short-circuit operators. 
# They only execute the right side if the left side is not enough 
# to determine the result:
IO.inspect false and raise("This error will never be raised")
# false
IO.inspect true or raise("This error will never be raised")
# true
IO.inspect not true
# false

# or
IO.inspect 1 || true
# 1
IO.inspect false || 11
# 11

# and
IO.inspect nil && 13
# nil
IO.inspect true && 17
# 17

# !
IO.inspect !true
# false
IO.inspect !1
# false
IO.inspect !nil
# true

IO.inspect 1 == 1
# true
IO.inspect 1 != 2
# true
IO.inspect 1 < 2
# true

IO.inspect 1 == 1.0
# true
IO.inspect 1 === 1.0
# false


# number < atom < reference < function < port < pid < tuple < map < list < bitstring
IO.inspect [1, 2, 3] < {:ok, 123}
# true