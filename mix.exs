defmodule Firefly.MixProject do
  use Mix.Project

  def project do
    [
      app: :firefly,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      description: "TBD",
      package: package(),
      deps: deps(),
      preferred_cli_env: [
        "hex.publish": :docs,
        docs: :docs
      ]
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
      {:ex_doc, "> 0.0.0", only: [:docs], runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE.md"],
      maintainers: ["Paul Schoenfelder"],
      licenses: ["Apache-2.0"],
      links: %{
        GitHub: "https://github.com/bitwalker/firefly"
      }
    ]
  end
end
