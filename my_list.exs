defmodule MyList do

  # Count

    def len([]), do: 0

    """
    len([]) runs when it matches arguments with empty list
    """

    def len([_ | tail]), do: 1 + len(tail)

    """
    len([_ | tail ]) runs when it matches arguments with list
    ex: [1,2], [1],
    explanation: list is always combination of head and tail, where head is the first value and tail is collection of rest of the values in list format.
    In [1, 2, 3] => head : 1 and tail => [2, 3].
    And this runs only when there is head and tail
    [1, 2] => 1 + (len(2) => 1 + (len([]) => 0)) thus the sum is 1 + 1 + 0 = 2
    """

  # Square

    def sq([]), do: []

    """
    similarly sq([]) runs when it matches arguments with empty list
    """

    def sq(n) when is_number(n), do: n * n

    """
    sq(n) runs when it matches arguments with anything, to overcome this we have guard clause is_number(n) this makes the sq() to be called only on numbers
    """

    def sq([head | tail]), do: [head * head | sq(tail)]


    def map([], _func), do: []

    def map([head | tail], func), do: [func.(head) | map(tail, func)]

end

# Examples

IO.puts(MyList.len([1,3,54]) |> MyList.sq)

IO.puts(MyList.sq([1,3,54]) |> MyList.len)

MyList.len([])
MyList.len([1,2,3,0])

MyList.sq([2,4,5,0])
MyList.sq([0])
MyList.sq([])

MyList.map [1,2,3,4], fn(n) -> n*n end
MyList.map [1,2,3,4], &(&1*&1)
MyList.map [1,2,3,4], &(&1-&1)
MyList.map [1,2,3,4], &(&1+&1)


