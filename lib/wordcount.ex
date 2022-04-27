defmodule WordCountWithReduce do
	@doc"""
	  - Count the number of words in the sentence.
	  - In case-sensitively
    
  	"""
	@spec count(String.t()) :: map
	def count(text) do
		# Map data sturcture
		map = %{}
		
		# splite text
	    String.split(text, ["\n", "\t", " ", "_", ",", "."]) \
	    
	    # call Enum.reduce(enumerable, acc, reducer) 
	    |> Enum.reduce(map, fn(char, map) ->
	      # Map get(map, key)
	      case Map.get(map, char) do
	        nil ->
	          if char != "" do
	          	# Map put(map, key, value)
	            Map.put(map, char, 1)
	          else
	            map
	          end
	        x -> Map.put(map, char, x + 1)
	      end
	    end)
	end
  
end