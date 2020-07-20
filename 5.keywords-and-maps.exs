
# LIST
IO.puts "LIST:"
list = [{:a, 1}, {:b, 2}]
# [a: 1, b: 2]
IO.inspect list == [a: 1, b: 2]
# true

IO.inspect list ++ [c: 3]
# [a: 1, b: 2, c: 3]
IO.inspect [a: 0] ++ list
# [a: 0, a: 1, b: 2]

new_list = [a: 0] ++ list
# [a: 0, a: 1, b: 2]
IO.inspect new_list[:a]
# 0

# Keyword lists are important because they have three special characteristics:
# - Keys must be atoms.
# - Keys are ordered, as specified by the developer.
# - Keys can be given more than once.


IO.inspect if false, do: :this, else: :that
# :that

IO.inspect if(false, [do: :this, else: :that])
# :that

IO.inspect if(false, [{:do, :this}, {:else, :that}])
# :that

# MAPS
IO.puts "\nMAPS:"
map = %{:a => 1, 2 => :b}

IO.inspect map[:a]
IO.inspect map[2]
IO.inspect map[:c]

%{} = map
%{:a => a} = map
IO.inspect a

n = 1
map = %{n => :one}
IO.inspect map[n]
%{^n => :one} = %{1 => :one, 2 => :two, 3 => :three}

# jika ada dua yang cocok di override
%{1 => x} = %{1 => :one, 1 => :two}
IO.inspect x

map = %{:a => 1, 2 => :b}
IO.inspect map
IO.inspect %{map | 2 => "two"}

IO.inspect map.a

# Nested data structures
IO.puts "\nNested data structures"
users = [
  john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]

IO.inspect users
IO.inspect users[:john].age

IO.inspect put_in users[:john].age, 31

IO.inspect update_in users[:mary].languages, fn languages -> List.delete(languages, "Clojure") end