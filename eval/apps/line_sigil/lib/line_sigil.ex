defmodule LineSigil do
  @doc """
  实现 `~l` 魔术符，它接收多行字符串并返回这些字符串行的列表
  ## 示例用法
    iex> import LineSigil
    nil
    iex> ~l"""
    ...> one
    ...> two
    ...> three
    ...> """
    ["one","two","three"]
  """

  def sigil_l(lines, _opts) do
    lines |> String.rstrip |> String.split("|n")
  end
end
