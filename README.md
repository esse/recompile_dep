# RecompileDep

This is purely experimental attempt to allow of dynamic deps recompilation in the IEx session.

Extracted from: https://github.com/elixir-lang/elixir/pull/9774

Inspired by: https://github.com/elixir-lang/elixir/issues/9746

## Usage

In the local development IEx session:

```
RecompileDep.run(Dep2)
```

Where `Dep2` is the name of dependency that has been changed.

Or:

```
RecompileDep.run([Dep2])
```

There is probably a milion gotchas here - however it seems to be working pretty well for me, so... `¯\_(ツ)\_/¯`

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `recompile_dep` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:recompile_dep, "~> 0.1.0", only: :dev}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/recompile_dep](https://hexdocs.pm/recompile_dep).
