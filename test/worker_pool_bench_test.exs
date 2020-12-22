defmodule WorkerPoolBenchTest do
  use ExUnit.Case
  doctest WorkerPoolBench

  test "greets the world" do
    assert WorkerPoolBench.hello() == :world
  end
end
