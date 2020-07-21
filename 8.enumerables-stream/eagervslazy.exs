
IO.inspect Enum.map(1..3, fn x -> x * 2 end)
IO.inspect Enum.map(%{1 => 2, 3 => 4}, fn {k, v} -> k * v end)

# odd? = fn x -> rem(x, 2) != 0 end
odd? = &(rem(&1, 2) != 0)

IO.inspect 1..100
  |> Enum.map(&(&1 * 3))
  |> Enum.filter(odd?)
  |> Enum.sum

IO.inspect 1..100
  |> Stream.map(&(&1 * 3))
  |> Stream.filter(odd?)
  |> Enum.sum