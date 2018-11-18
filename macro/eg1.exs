defmodule My do
  defmacro macro(code) do
    IO.inspect(code)
    IO.inspect quote do: code
  end
end

defmodule Test do
  require My
  My.macro(IO.puts("hello"))
end
