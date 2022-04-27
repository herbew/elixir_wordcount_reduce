# Word count with reduce method
Count word of text as array with array reduce method

## We used array with the reduce method.

- Enum.reduce(enumerable, acc, reducer) aggregates all the values from 
  an enumerable like a list into a new value. The new value in our case is a map. 
  The second argument is the initial computed value and 
  is an empty map (%{}) in our case.

- Map.put(map, key, value) updates the given key with the new value in the map. 
  The map is an immutable data structure in Elixir so “updating” 
  means creating a new changed map.

## Test
## $ mix test
Excluding tags: [:pending]
WordCountWithReduceTest [test/wordcount_test.exs]
  * test 3. Count 1 word of each in the text (excluded) [L#13]
  * test 1. Count 1 word in the text (1.0ms) [L#4]
  * test 2. Count 2 word in the text (0.00ms) [L#8]
Finished in 0.02 seconds (0.00s async, 0.02s sync)
3 tests, 0 failures, 1 excluded

## $ mix test --include pending
Including tags: [:pending]
WordCountWithReduceTest [test/wordcount_test.exs]
  * test 1. Count 1 word in the text (0.6ms) [L#4]
  * test 3. Count 1 word of each in the text (0.00ms) [L#13]
  * test 2. Count 2 word in the text (0.00ms) [L#8]
Finished in 0.02 seconds (0.00s async, 0.02s sync)
3 tests, 0 failures

