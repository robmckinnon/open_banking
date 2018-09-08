defmodule OpenBanking.MixProject do
  use Mix.Project

  def project do
    [
      app: :open_banking,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:joken, "~> 1.5"},
      {:mix_test_watch, "~> 0.8", only: :dev, runtime: false},
      {:mock, "~> 0.3.0", only: :test},
      {:poison, "~> 3.0"}
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
