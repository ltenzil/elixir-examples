defmodule FizzBuzz do

  def fizzbuzz3(0, 0, _), do: "FizzBuzz"
  def fizzbuzz3(0, _, _), do: "Fizz"
  def fizzbuzz3(_, 0, _), do: "Buzz"
  def fizzbuzz3(_, _, n), do: n

  def loop3(n) when is_number(n), do: FizzBuzz.fizzbuzz3(rem(n, 3), rem(n, 5), rem(n, 7))

end