defmodule MundaneElements do
  def get_file_type(path_to_file) do
    case File.read(path_to_file) do
      {:ok, binary} ->
        type(binary)
        _->
          IO.puts "Couldn't open #{path_to_file}"
      end
  end


  @png_signature <<137::size(8), 80::size(8), 78::size(8), 71::size(8),
  13::size(8), 10::size(8), 26::size(8), 10::size(8)>>
  @jpg_signature <<255::size(8), 216::size(8)>>

  def type(<<@png_signature, rest::binary>>), do: :png
  def type(<<@jpg_signature, rest::binary>>), do: :jpg
  def type(_), do: :unknown
end
