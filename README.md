# elixir_wordcount_reduce
Count word of text as array with array reduce method

## We used array with the reduce method.

- Enum.reduce(enumerable, acc, reducer) aggregates all the values from an enumerable like a list into a new value. The new value in our case is a map. The second argument is the initial computed value and is an empty map (%{}) in our case.

- Map.put(map, key, value) updates the given key with the new value in the map. The map is an immutable data structure in Elixir so “updating” means creating a new changed map.
