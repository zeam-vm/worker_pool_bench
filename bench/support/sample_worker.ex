defmodule SampleWorker do
  use WorkerPool.Worker
  @impl true
  def work({pid, list}), do: send(pid, {:ok, Enum.map(list, & &1 * 2)})
end
