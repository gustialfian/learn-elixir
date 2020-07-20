
defmodule Concat do
  def join(a, b \\ nil, sep \\ " ")

  def join(a, b, _sap) when is_nil(b) do
    a
  end

  def join(a, b, sep) do
    a <> sep <> b
  end
end

IO.puts Concat.join("hello", "world")
IO.puts Concat.join("hello", "world", "_")
IO.puts Concat.join("Hello")