defmodule HelloElixir do

  @moduledoc """
    This is the Hello module, here we are going to print hello world, and other values passed,
    We do pattern matching and print the respective values.
  """
  @doc """
    Prints Hello Ten when ten is passed as a argument, Argument is pattern matched here
  """
  def print("ten"), do: "Hello Ten"

  @doc """
    Prints Hello World when :world is passed as a argument, Argument is pattern matched here
  """

  def print(:world), do: "Hello World"

  @doc """
    Prints Hello Pramati when pramati is passed as a argument, Argument is pattern matched here
  """

  def print("pramati"), do: "Hello Pramati"

  # def print(nil), do: "Printing Nil"

  @doc """
    this picks any argument, Do case and a pattern matching and prints accordinly
  """

  def print(arg) do
    case arg do
      "1" -> 1
      "2" -> 2
      "3" -> 3
      _ -> arg
    end
  end

  @doc """
    This is pattern matched but never called as the above method picks it. if we move this above then it works
  """

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