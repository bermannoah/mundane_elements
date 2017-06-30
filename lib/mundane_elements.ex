defmodule MundaneElements do
  def get_file_type(path_to_file) do
    case File.read(path_to_file) do
      {:ok, binary} ->
        type(binary)
        _->
          IO.puts "Couldn't open #{path_to_file}"
      end
  end


  @png_signature <<0x89::size(8), 0x50::size(8), 0x4E::size(8), 0x47::size(8),
  0x0D::size(8), 0x0A::size(8), 0x1A::size(8), 0x0A::size(8)>>

  @jpg_signature <<0xFF::size(8), 0xD8::size(8), 0xFF::size(8)>>

  @gif_signature <<0x47::size(8), 0x49::size(8), 0x46::size(8)>>
  # This differs from Magic_Bytes in that it checks for RIFF instead of WEBP.
  @webp_signature <<0x52::size(8), 0x49::size(8), 0x46::size(8), 0x46::size(8)>>

  @flif_signature <<0x46::size(8), 0x4C::size(8), 0x49::size(8), 0x46::size(8)>>

  @cr2_signature <<0x49::size(8), 0x49::size(8), 0x2A::size(8), 0x0::size(8)>>
  # Need to add offset to this
  @cr2_signature_alt <<0x4D::size(8), 0x4D::size(8), 0x0::size(8), 0x2A::size(8)>>

  @tif_signature <<0x49::size(8), 0x49::size(8), 0x2A::size(8), 0x0::size(8)>>

  def type(<<@png_signature, rest::binary>>), do: :png
  def type(<<@jpg_signature, rest::binary>>), do: :jpg
  def type(<<@gif_signature, rest::binary>>), do: :gif
  def type(<<@webp_signature, rest::binary>>), do: :webp
  def type(<<@webp_signature, rest::binary>>), do: :webp
  def type(<<@flif_signature, rest::binary>>), do: :flif
  # Needs to be before 'tif' check
  def type(<<@cr2_signature, rest::binary>>), do: :cr2
  def type(<<@cr2_signature_alt, rest::binary>>), do: :cr2
  def type(<<@tif_signature, rest::binary>>), do: :tif
  def type(_), do: :unknown
end
