defmodule BasicWorkerPoolBench do
  use Benchfella

  @range 1..1_000

  setup_all do
  	WorkerPool.start_link(SampleWorker)
  end

  bench "basic" do
    WorkerPool.get_worker(SampleWorker) |> send({:work, {self(), @range}})
    receive do
      {:ok, result} -> result
      after 1000 -> IO.puts "Timeout"
    end
  end

  bench "Enum" do
    Enum.map(@range, & &1 * 2)
  end
end