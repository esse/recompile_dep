defmodule RecompileDep.MixProject do
  use Mix.Project

  def project do
    [
      app: :recompile_dep,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: false,
      deps: deps(),
      description: description(),
      package: package()
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
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp description() do
    "This is purely experimental attempt to allow of dynamic deps recompilation in the IEx session."
  end

  defp package() do
    [
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/esse/recompile_dep"}
    ]
  end
end
