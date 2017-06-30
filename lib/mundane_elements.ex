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

  @webp_signature <<0x57::size(8), 0x45::size(8), 0x42::size(8), 0x50::size(8)>>

  @flif_signature <<0x46::size(8), 0x4C::size(8), 0x49::size(8), 0x46::size(8)>>

  @cr2_signature <<0x49::size(8), 0x49::size(8), 0x2A::size(8), 0x0::size(8)>> ||
    <<0x4D::size(8), 0x4D::size(8), 0x0::size(8), 0x2A::size(8)>> && <<0x43::size(8), 0x52::size(8)>>

  @tif_signature <<0x4D::size(8), 0x4D::size(8), 0x00::size(8), 0x2A::size(8)>> ||
    <<0x49::size(16), 0x49::size(16), 0x2A::size(16), 0x00::size(16), 0x67::size(16), 0x45::size(16)>>

  @bmp_signature <<0x42::size(8), 0x4D::size(8)>>

  @jxr_signature <<0x49::size(8), 0x49::size(8), 0xBC::size(8)>>

  @psd_signature <<0x38::size(8), 0x42::size(8), 0x50::size(8), 0x53::size(8)>>

  @epub_signature <<0x50::size(8), 0x4B::size(8), 0x3::size(8), 0x4::size(8)>> &&
    <<0x6D::size(8), 0x69::size(8), 0x6D::size(8), 0x65::size(8), 0x74::size(8), 0x79::size(8), 0x70::size(8), 0x65::size(8), 0x61::size(8), 0x70::size(8), 0x70::size(8), 0x6C::size(8), 0x69::size(8), 0x63::size(8), 0x61::size(8), 0x74::size(8), 0x69::size(8), 0x6F::size(8), 0x6E::size(8), 0x2F::size(8), 0x65::size(8), 0x70::size(8), 0x75::size(8), 0x62::size(8), 0x2B::size(8), 0x7A::size(8), 0x69::size(8), 0x70::size(8)>>

  @xpi_signature <<0x50::size(8), 0x4B::size(8), 0x3::size(8), 0x4::size(8)>> &&
    <<0x4D::size(8), 0x45::size(8), 0x54::size(8), 0x41::size(8), 0x2D::size(8), 0x49::size(8), 0x4E::size(8), 0x46::size(8), 0x2F::size(8), 0x6D::size(8), 0x6F::size(8), 0x7A::size(8), 0x69::size(8), 0x6C::size(8), 0x6C::size(8), 0x61::size(8), 0x2E::size(8), 0x72::size(8), 0x73::size(8), 0x61::size(8)>>

  @zip_signature <<0x50::size(8), 0x4B::size(8)>> && (<<0x3::size(8)>> || <<0x5::size(8)>> || <<0x7::size(8)>>) &&
		(<<0x4::size(8)>> || <<0x6::size(8)>> || <<0x8::size(8)>>)

  @tar_signature <<0x75::size(8), 0x73::size(8), 0x74::size(8), 0x61::size(8), 0x72::size(8)>>

  # This has to be above .rar for Reasons (that I don't know yet)
  @m4v_signature <<0x0::size(8), 0x0::size(8), 0x0::size(8), 0x1C::size(8), 0x66::size(8), 0x74::size(8), 0x79::size(8), 0x70::size(8), 0x4D::size(8), 0x34::size(8), 0x56::size(8)>>

  @rar_signature <<0x52::size(8), 0x61::size(8), 0x72::size(8), 0x21::size(8), 0x1A::size(8), 0x7::size(8)>> && <<0x0::size(8)>> || <<0x1::size(8)>>

  @gz_signature <<0x1F::size(8), 0x8B::size(8), 0x8::size(8)>>

  @bz2_signature <<0x42::size(8), 0x5A::size(8), 0x68::size(8)>>
  # Elixir will not accept a leading number here
  @seven_zip_signature <<0x37::size(8), 0x7A::size(8), 0xBC::size(8), 0xAF::size(8), 0x27::size(8), 0x1C::size(8)>>

  @dmg_signature <<0x78::size(8), 0x01::size(8)>>

  @mp4_signature <<0x78::size(8), 0x01::size(8)>>

  @mid_signature <<0x4D::size(8), 0x54::size(8), 0x68::size(8), 0x64::size(8)>>

  @mkv_signature <<0x4D::size(8), 0x54::size(8), 0x68::size(8), 0x64::size(8)>>

  @webm_signature <<0x4D::size(8), 0x54::size(8), 0x68::size(8), 0x64::size(8)>>

  @mov_signature <<0x4D::size(8), 0x54::size(8), 0x68::size(8), 0x64::size(8)>>

  @avi_signature <<0x4D::size(8), 0x54::size(8), 0x68::size(8), 0x64::size(8)>>

  @wmv_signature <<0x30::size(8), 0x26::size(8), 0xB2::size(8), 0x75::size(8), 0x8E::size(8), 0x66::size(8), 0xCF::size(8), 0x11::size(8), 0xA6::size(8), 0xD9::size(8)>>

  def type(<<@png_signature, rest::binary>>), do: :png
  def type(<<@jpg_signature, rest::binary>>), do: :jpg
  def type(<<@gif_signature, rest::binary>>), do: :gif
  def type(<<@webp_signature, rest::binary>>), do: :webp
  def type(<<@flif_signature, rest::binary>>), do: :flif
  def type(<<@cr2_signature, rest::binary>>), do: :cr2
  def type(<<@tif_signature, rest::binary>>), do: :tif
  def type(<<@bmp_signature, rest::binary>>), do: :bmp
  def type(<<@jxr_signature, rest::binary>>), do: :jxr
  def type(<<@psd_signature, rest::binary>>), do: :psd
  def type(<<@epub_signature, rest::binary>>), do: :epub
  def type(<<@xpi_signature, rest::binary>>), do: :xpi
  def type(<<@zip_signature, rest::binary>>), do: :zip
  def type(<<@m4v_signature, rest::binary>>), do: :m4v
  def type(<<@tar_signature, rest::binary>>), do: :tar
  def type(<<@rar_signature, rest::binary>>), do: :rar
  def type(<<@gz_signature, rest::binary>>), do: :gz
  def type(<<@bz2_signature, rest::binary>>), do: :bz2
  def type(<<@seven_zip_signature, rest::binary>>), do: :seven_zip
  def type(<<@dmg_signature, rest::binary>>), do: :dmg
  def type(<<@mp4_signature, rest::binary>>), do: :mp4
  def type(<<@mid_signature, rest::binary>>), do: :mid
  def type(<<@mkv_signature, rest::binary>>), do: :mkv
  def type(<<@webm_signature, rest::binary>>), do: :webm
  def type(<<@mov_signature, rest::binary>>), do: :mov
  def type(<<@avi_signature, rest::binary>>), do: :avi
  def type(<<@wmv_signature, rest::binary>>), do: :wmv

  def type(_), do: :unknown

end
