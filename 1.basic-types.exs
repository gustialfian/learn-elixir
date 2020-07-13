# data type
IO.inspect 1          # integer
IO.inspect 0x1F       # integer
IO.inspect 1.0        # float
IO.inspect true       # boolean
IO.inspect :atom      # atom / symbol
IO.inspect "elixir"   # string
IO.inspect [1, 2, 3]  # list
IO.inspect {1, 2, 3}  # tuple

# basic arith matic
IO.puts 1 + 2
# 3
IO.puts 5 * 5
# 25
IO.puts 10 / 2
# 5.0 

IO.puts div(10, 2)
# 5
IO.puts div 10, 2
# 5
IO.puts rem 10, 3
# 1

# float
IO.puts 1.0
# 1.0
IO.puts 1.0e-10
# 1.0e-10
IO.puts round(3.58)
# 4
IO.puts trunc(3.58)
# 3

# boolean
IO.puts true
# true
IO.puts true == false
# false
IO.puts is_boolean(true)
# true
IO.puts is_boolean(1)
# false

# is_integer/1, is_float/1 or is_number/1

# ATOMS
IO.puts :apple
# :apple
IO.puts :orange
# :orange
IO.puts :watermelon
# :watermelon

IO.puts :apple == :apple
# true
IO.puts :apple == :orange
# false

IO.puts true == :true
# true
IO.puts is_atom(false)
# true
IO.puts is_boolean(:false)
# true

# Aliases
IO.puts is_atom(Hello)
# true

# STRING
IO.puts "hellö"
# "hellö"

IO.puts string = :world
IO.puts "hellö #{string}"
# "hellö world"

IO.inspect "hello
world"
# "hello\nworld"
IO.inspect "hello\nworld"
# "hello\nworld"

IO.puts is_binary("hellö")
# true
IO.puts byte_size("hellö")
# 6
IO.puts String.length("hellö")
# 5
IO.puts String.upcase("hellö")
# "HELLÖ"

# anonymous function
add = fn a, b -> a + b end
#Function<12.71889879/2 in :erl_eval.expr/5>

# Note that a dot (.) between the variable and parentheses is required 
# to invoke an anonymous function. The dot ensures there is no ambiguity 
# between calling the anonymous function matched to a variable add and a 
# named function add/2. We will explore named functions when dealing with 
# Modules and Functions, since named functions can only be defined within 
# a module. For now, just remember that Elixir makes a clear distinction 
# between anonymous functions and named functions.
IO.puts add.(1, 2)
# 3
IO.puts is_function(add)
# true

# check if add is a function that expects exactly 2 arguments
IO.inspect is_function(add, 2)
# true
# check if add is a function that expects exactly 1 argument
IO.inspect is_function(add, 1)
# false

double = fn a -> add.(a, a) end
#Function<6.71889879/1 in :erl_eval.expr/5>
IO.puts double.(2)
# 4

x = 42
# 42
(fn -> _x = 0 end).()
# 0
IO.puts x
# 42

# (Linked) Lists
IO.inspect [1, 2, true, 3]
# [1, 2, true, 3]
IO.inspect length [1, 2, 3]
# 3

IO.inspect [1, 2, 3] ++ [4, 5, 6]
# [1, 2, 3, 4, 5, 6]
IO.inspect [1, true, 2, false, 3, true] -- [true, false]
# [1, 2, 3, true]

list = [1, 2, 3]
IO.inspect hd(list)
# 1
IO.inspect tl(list)
# [2, 3]

IO.inspect [11, 12, 13]
# '\v\f\r'
IO.inspect [104, 101, 108, 108, 111]
# 'hello'

IO.puts 'hello' == "hello"
# false

IO.inspect {:ok, "hello"}
# {:ok, "hello"}
IO.inspect tuple_size {:ok, "hello"}
# 2

tuple = {:ok, "hello"}
# {:ok, "hello"}
IO.inspect elem(tuple, 1)
# "hello"
IO.inspect tuple_size(tuple)
# 2

tuple = {:ok, "hello"}
# {:ok, "hello"}
IO.inspect put_elem(tuple, 1, "world")
# {:ok, "world"}
IO.inspect tuple
# {:ok, "hello"}

# LIST vs TUPLE
# Lists are stored in memory as linked lists, meaning that each element 
# in a list holds its value and points to the following element until the 
# end of the list is reached. This means accessing the length of a list is 
# a linear operation: we need to traverse the whole list in order to figure out its size.
list = [1, 2, 3]
# This is fast as we only need to traverse `[0]` to prepend to `list`
IO.inspect [0] ++ list
# [0, 1, 2, 3]
# This is slow as we need to traverse `list` to append 4
IO.inspect list ++ [4]
# [1, 2, 3, 4]

# Tuples, on the other hand, are stored contiguously in memory. This means getting 
# the tuple size or accessing an element by index is fast. However, updating or adding 
# elements to tuples is expensive because it requires creating a new tuple in memory:
tuple = {:a, :b, :c, :d}
IO.inspect put_elem(tuple, 2, :e)
{:a, :b, :e, :d}