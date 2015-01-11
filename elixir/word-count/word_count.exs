defmodule Words do
    @doc """
    Count the number of words in the sentence.

    Words are compared case-insensitively.
    """
    @spec count(String.t) :: map()
    def count(sentence) do
      Regex.scan(~r/[\pL\pN-]+/u, String.downcase(sentence))
        |> List.flatten
        |> Enum.reduce(%{}, fn(word, dictionary) ->
            Dict.update(dictionary, word, 1, fn(val) -> val + 1 end)
           end)
    end
end
