defmodule Sequence.Server do
  use GenServer

  def handle_call(:pop, _from, [item|tail]) do
    { :reply, item, tail }
  end
end
