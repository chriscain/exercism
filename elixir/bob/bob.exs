defmodule Teenager do
  def hey(input) do
    cond do
    	is_empty(input) -> "Fine. Be that way!"
    	is_yelling(input) -> "Woah, chill out!"
    	is_question(input) -> "Sure."
    	true -> "Whatever."
    end
  end

  def is_yelling(input) do
  	#must be presence of at least one uppercase letter and all uppercase
  	input == String.upcase(input) && input != String.downcase(input)
  end

  def is_question(input) do
  	input |> String.last == "?"
  end

  def is_empty(input) do
  	input |> String.strip == ""
  end
end
