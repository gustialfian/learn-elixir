defmodule Loop do
  def print_multiple_times(msg, n) when n <= 1 do
    IO.inspect {msg, n}
  end

  def print_multiple_times(msg, n) do
    IO.inspect {msg, n}
    print_multiple_times(msg, n - 1)
  end
end

Loop.print_multiple_times("Hello!", 3)