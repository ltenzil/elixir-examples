defmodule HelloElixir do

  def print("ten"), do: "Hello Ten"
  def print(:world), do: "Hello World"
  def print("pramati"), do: "Hello Pramati"

  # def print(nil), do: "Printing Nil"

  def print(arg) do
    case arg do
      "1" -> 1
      "2" -> 2
      "3" -> 3
      _ -> arg
    end
  end

  def print(nil), do: "Printing Nil"

end

IO.puts HelloElixir.print("ten")

IO.puts HelloElixir.print(:world)

IO.puts HelloElixir.print("pramati")

HelloElixir.print("1")
|> IO.puts

HelloElixir.print("2")
|> IO.puts

HelloElixir.print(100)
|> IO.puts

HelloElixir.print(nil)
|> IO.puts