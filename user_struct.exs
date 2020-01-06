defmodule UserStruct do

  defstruct name: "", age: 0, gender: ""

  def over18(user = %UserStruct{}) do
    user.age > 18
  end

  """
  The above fn over18 is equvalent to both over_18
  """

  def over_18(%UserStruct{age: age}) when age > 18, do: true
  def over_18(%UserStruct{age: age}) when age < 18, do: false

  def is_male(%UserStruct{gender: gender}) when gender == "Male", do: true
  def is_male(%UserStruct{gender: gender}) when gender != "Male", do: false

  def is_female(%UserStruct{gender: gender}) when gender == "Female", do: true
  def is_female(%UserStruct{gender: gender}) when gender != "Female", do: false

end

defmodule PostStruct do
  # @derive Access

  defstruct message: "", user: %{}

  def commenter(%PostStruct{user: user}), do: user
end