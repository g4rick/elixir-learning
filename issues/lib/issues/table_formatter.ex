defmodule Issues.TableFormatter do
  
  import Enum, only: [each: 2, map: 2, map_join: 3, max: 1]

  def print_table_for_columns(row, headers) do
    data_by_columns = split_into_columns(rows, headers)
    column_widths = widths_of(data_by_columns)
    # format = format_for(column_widths)

    # puts_one_line_in_columns headers, format
    # IO.puts separator(column_widths)
    # puts_in_columns data_by_columns, format
  end

  def split_into_columns(rows, headers) do
    for header <- headers do
      for row <- rows, do: printable(row[header])
    end
  end

  def printable(str) when is_binary(str), do: str
  def printable(str), do: to_string(str)

  def widths_of(columns) do
    for column <- columns, do: column |> map(&String.length/1) |> max
  end

  

end