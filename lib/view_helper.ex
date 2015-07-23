defmodule Personal.ViewHelper do
  def active(option, conn) do
    current_path = Path.join(["/" | conn.path_info])

    if option == current_path do
      " class=\"mui-active\""
    else
      ""
    end
  end

  def active_top_level(options, conn) when is_list(options)  do
    current_path = Path.join(["/" | conn.path_info])

    IO.inspect current_path
    IO.inspect options

    matched = Enum.filter(options, fn (option) ->
      option == current_path
    end)

    IO.puts "matched"
    IO.inspect matched

    if length(matched) > 0 do
      " class=\"mui-active\""
    else
      ""
    end
  end

  def active_top_level(option, conn) do
    current_path = Path.join(["/" | conn.path_info])

    IO.inspect current_path
    IO.inspect option

    if option == current_path do
      " class=\"mui-active\""
    else
      ""
    end
  end
end