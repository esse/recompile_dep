defmodule RecompileDep do
  def run(mod) when is_atom(mod) do
    mod |> list_to_invalidate() |> recompile()
  end

  def run(list_of_mods) when is_list(list_of_mods) do
    list_of_mods |> Enum.flat_map(&list_to_invalidate/1) |> recompile()
  end

  def list_to_invalidate(module) do
    mix_name = "#{module}.MixProject" |> String.to_atom()

    [
      {:task, "compile.all", mix_name},
      {:task, "compile.leex", mix_name},
      {:task, "compile.yecc", mix_name},
      {:task, "compile.erlang", mix_name},
      {:task, "compile", mix_name},
      {:task, "compile.elixir", mix_name},
      {:task, "compile.app", mix_name},
      {:alias, "compile.all", mix_name},
      {:alias, "compile.leex", mix_name},
      {:alias, "compile.yecc", mix_name},
      {:alias, "compile.erlang", mix_name},
      {:alias, "compile", mix_name},
      {:alias, "compile.elixir", mix_name},
      {:alias, "compile.app", mix_name}
    ]
  end

  defp recompile(tasks) do
    Mix.Task.reenable("deps.loadpaths")
    Mix.Task.reenable("deps.precompile")
    Mix.Task.reenable("loadpaths")

    Mix.TasksServer.delete_many(tasks)

    IEx.Helpers.recompile()
  end
end
