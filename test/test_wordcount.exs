defmodule WordCountWithReduceTest do
    use ExUnit.Case

    test "1. Count 1 word in the text" do
        assert WordCountWithReduce.count("Word") == %{"Word" => 1}
    end
    
    test "2. Count 2 word in the text" do
        assert WordCountWithReduce.count("Word Word") == %{"Word" => 2}
    end
    
    @tag :pending
    test "3. Count 1 word of each in the text" do
        expected = %{"one" => 1, "of" => 1, "each" => 1}
        assert WordCountWithReduce.count("one of each") == expected
    end
end