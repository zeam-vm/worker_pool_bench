defmodule WorkerPoolBench.MixProject do
  use Mix.Project

  def project do
    [
      app: :worker_pool_bench,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env())
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:worker_pool, path: "../worker_pool"},
      {:benchfella, "~> 0.3.5"}
    ]
  end

  defp elixirc_paths(_), do: ["lib", "bench", "bench/support"]
end
