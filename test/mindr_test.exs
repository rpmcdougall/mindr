defmodule MindrTest do
  use ExUnit.Case
  doctest Mindr

  test "greets the world" do
    assert Mindr.hello() == :world
  end
end
