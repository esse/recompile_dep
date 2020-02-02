defmodule RecompileDepTest do
  use ExUnit.Case
  doctest RecompileDep

  test "greets the world" do
    assert RecompileDep.hello() == :world
  end
end
