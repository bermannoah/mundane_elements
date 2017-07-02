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


  @cr2_signature <<0x49::size(8), 0x49::size(8), 0x2A::size(8), 0x0::size(8), 0x10::size(8)>> || <<0x4D::size(8), 0x4D::size(8), 0x0::size(8), 0x2A::size(8)>>
  
  @cr2_signature_alt <<0x43::size(8), 0x52::size(8)>>

  @tif_little_endian_signature <<0x49::little-integer-size(8), 0x49::little-integer-size(8), 0x2A::little-integer-size(8), 0x00::little-integer-size(8)>>
  
  @tif_big_endian_signature <<0x4D::size(8), 0x4D::size(8), 0x00::size(8), 0x2A::size(8)>>
  
  @bmp_signature <<0x42::size(8), 0x4D::size(8)>>

  @jxr_signature <<0x49::size(8), 0x49::size(8), 0xBC::size(8)>>

  @psd_signature <<0x38::size(8), 0x42::size(8), 0x50::size(8), 0x53::size(8)>>

  @epub_signature <<0x50::size(8), 0x4B::size(8), 0x3::size(8), 0x4::size(8)>> &&
    <<0x6D::size(8), 0x69::size(8), 0x6D::size(8), 0x65::size(8), 0x74::size(8), 0x79::size(8), 0x70::size(8), 0x65::size(8), 0x61::size(8), 0x70::size(8), 0x70::size(8), 0x6C::size(8), 0x69::size(8), 0x63::size(8), 0x61::size(8), 0x74::size(8), 0x69::size(8), 0x6F::size(8), 0x6E::size(8), 0x2F::size(8), 0x65::size(8), 0x70::size(8), 0x75::size(8), 0x62::size(8), 0x2B::size(8), 0x7A::size(8), 0x69::size(8), 0x70::size(8)>>

  @xpi_signature <<0x50::size(8), 0x4B::size(8), 0x3::size(8), 0x4::size(8)>> &&
    <<0x4D::size(8), 0x45::size(8), 0x54::size(8), 0x41::size(8), 0x2D::size(8), 0x49::size(8), 0x4E::size(8), 0x46::size(8), 0x2F::size(8), 0x6D::size(8), 0x6F::size(8), 0x7A::size(8), 0x69::size(8), 0x6C::size(8), 0x6C::size(8), 0x61::size(8), 0x2E::size(8), 0x72::size(8), 0x73::size(8), 0x61::size(8)>>

  @zip_signature <<0x50::size(8), 0x4B::size(8), 0x3::size(8)>> || <<0x50::size(8), 0x4B::size(8), 0x5::size(8)>> || <<0x50::size(8), 0x4B::size(8), 0x7::size(8)>> && (<<0x4::size(8)>> || <<0x6::size(8)>> || <<0x8::size(8)>>)

  @tar_signature <<0x75::size(8), 0x73::size(8), 0x74::size(8), 0x61::size(8), 0x72::size(8)>>
  
  @wasm_signature <<0x00::size(8), 0x61::size(8), 0x73::size(8), 0x6D::size(8)>>
  # These have to be above RAR
  @m4v_signature <<0x0::size(8), 0x0::size(8), 0x0::size(8), 0x1C::size(8), 0x66::size(8), 0x74::size(8), 0x79::size(8), 0x70::size(8), 0x4D::size(8), 0x34::size(8), 0x56::size(8)>>

  @m4a_signature <<0x66::size(8), 0x74::size(8), 0x79::size(8), 0x70::size(8), 0x4D::size(8), 0x34::size(8), 0x41::size(8)>> || <<0x4D::size(8), 0x34::size(8), 0x41::size(8), 0x20::size(8)>>

  @mpg_signature <<0x0::size(8), 0x0::size(8), 0x1::size(8), 0xBA::size(8)>>

  @rar_signature <<0x52::size(8), 0x61::size(8), 0x72::size(8), 0x21::size(8), 0x1A::size(8), 0x7::size(8), 0x0::size(8)>> || <<0x52::size(8), 0x61::size(8), 0x72::size(8), 0x21::size(8), 0x1A::size(8), 0x7::size(8), 0x1::size(8)>>

  @gz_signature <<0x1F::size(8), 0x8B::size(8), 0x8::size(8)>>

  @bz2_signature <<0x42::size(8), 0x5A::size(8), 0x68::size(8)>>
  # Elixir will not accept a leading number here
  @seven_zip_signature <<0x37::size(8), 0x7A::size(8), 0xBC::size(8), 0xAF::size(8), 0x27::size(8), 0x1C::size(8)>>

  @dmg_signature <<0x78::size(8), 0x01::size(8)>>

  @mp4_signature <<0x78::size(8), 0x01::size(8)>>

  @mid_signature <<0x4D::size(8), 0x54::size(8), 0x68::size(8), 0x64::size(8)>>

  @mkv_signature <<0x4D::size(8), 0x54::size(8), 0x68::size(8), 0x64::size(8)>>

  @webm_signature <<0x4D::size(8), 0x54::size(8), 0x68::size(8), 0x64::size(8)>>

  @mov_signature <<0x0::size(8), 0x0::size(8), 0x0::size(8), 0x14::size(8), 0x66::size(8), 0x74::size(8), 0x79::size(8), 0x70::size(8), 0x71::size(8), 0x74::size(8), 0x20::size(8), 0x20::size(8)>>

  @mov_signature_with_offset <<0x66::size(8), 0x72::size(8), 0x65::size(8), 0x65::size(8)>> || <<0x66::size(8), 0x74::size(8), 0x79::size(8), 0x70::size(8), 0x71::size(8), 0x74::size(8), 0x20::size(8), 0x20::size(8)>> || <<0x6D::size(8), 0x64::size(8), 0x61::size(8), 0x74::size(8)>> || <<0x77::size(8), 0x69::size(8), 0x64::size(8), 0x65::size(8)>>

  @avi_signature <<0x52::size(8), 0x49::size(8), 0x46::size(8), 0x46::size(8)>>
  
  @avi_signature_alt <<0x41::size(8), 0x56::size(8), 0x49::size(8)>>

  @wmv_signature <<0x30::size(8), 0x26::size(8), 0xB2::size(8), 0x75::size(8), 0x8E::size(8), 0x66::size(8), 0xCF::size(8), 0x11::size(8), 0xA6::size(8), 0xD9::size(8)>>

  @mp3_signature <<0x49::size(8), 0x44::size(8), 0x33::size(8)>> || <<0xFF::size(8), 0xFB::size(8)>>

  @opus_signature <<0x4F::size(8), 0x70::size(8), 0x75::size(8), 0x73::size(8), 0x48::size(8), 0x65::size(8), 0x61::size(8), 0x64::size(8)>>

  @ogg_signature <<0x4F::size(8), 0x67::size(8), 0x67::size(8), 0x53::size(8)>>

  @flac_signature <<0x66::size(8), 0x4C::size(8), 0x61::size(8), 0x43::size(8)>>

  @wav_signature <<0x52::size(8), 0x49::size(8), 0x46::size(8), 0x46::size(8)>>
  
  @wav_signature_alt <<0x57::size(8), 0x41::size(8), 0x56::size(8), 0x45::size(8)>>

  @amr_signature <<0x23::size(8), 0x21::size(8), 0x41::size(8), 0x4D::size(8), 0x52::size(8), 0x0A::size(8)>>

  @pdf_signature <<0x25::size(8), 0x50::size(8), 0x44::size(8), 0x46::size(8)>>

  @exe_signature <<0x4D::size(8), 0x5A::size(8)>>

  @swf_signature <<0x43::size(8)>> || <<0x46::size(8)>>
  
  @swf_signature_alt <<0x57::size(8), 0x53::size(8)>>

  @rtf_signature <<0x7B::size(8), 0x5C::size(8), 0x72::size(8), 0x74::size(8), 0x66::size(8)>>

  @woff_signature <<0x77::size(8), 0x4F::size(8), 0x46::size(8), 0x46::size(8)>> 
  
  @woff_signature_alt <<0x00::size(8), 0x01::size(8), 0x00::size(8), 0x00::size(8)>> || <<0x4F::size(8), 0x54::size(8), 0x54::size(8), 0x4F::size(8)>>

  @woff2_signature <<0x77::size(8), 0x4F::size(8), 0x46::size(8), 0x32::size(8)>>
  
  @woff2_signature_alt <<0x00::size(8), 0x01::size(8), 0x00::size(8), 0x00::size(8)>> || <<0x4F::size(8), 0x54::size(8), 0x54::size(8), 0x4F::size(8)>>

  @eot_signature <<0x4c::size(8), 0x50::size(8)>> 

  @eot_signature_alt <<0x00::size(8), 0x00::size(8), 0x01::size(8)>> || <<0x00=1::size(8), 0x00::size(8), 0x02::size(8)>> || <<0x02::size(8), 0x00::size(8), 0x02::size(8)>>

  @ttf_signature <<0x00::size(8), 0x01::size(8), 0x00::size(8), 0x00::size(8), 0x00::size(8)>>

  @otf_signature <<0x4F::size(8), 0x54::size(8), 0x54::size(8), 0x4F::size(8), 0x00::size(8)>>

  @ico_signature <<0x00::size(8), 0x00::size(8), 0x01::size(8), 0x00::size(8)>>

  @flv_signature <<0x46::size(8), 0x4C::size(8), 0x56::size(8), 0x01::size(8)>>

  @ps_signature <<0x25::size(8), 0x21::size(8)>>

  @xz_signature <<0xFD::size(8), 0x37::size(8), 0x7A::size(8), 0x58::size(8), 0x5A::size(8), 0x00::size(8)>>

  @sqlite_signature <<0x53::size(8), 0x51::size(8), 0x4C::size(8), 0x69::size(8)>>

  @nes_signature <<0x4E::size(8), 0x45::size(8), 0x53::size(8), 0x1A::size(8)>>

  @crx_signature <<0x43::size(8), 0x72::size(8), 0x32::size(8), 0x34::size(8)>>

  @cab_signature <<0x4D::size(8), 0x53::size(8), 0x43::size(8), 0x46::size(8)>> || <<0x49::size(8), 0x53::size(8), 0x63::size(8), 0x28::size(8)>>

  @deb_signature <<0x21::size(8), 0x3C::size(8), 0x61::size(8), 0x72::size(8), 0x63::size(8), 0x68::size(8), 0x3E::size(8), 0x0A::size(8), 0x64::size(8), 0x65::size(8), 0x62::size(8), 0x69::size(8), 0x61::size(8), 0x6E::size(8), 0x2D::size(8), 0x62::size(8), 0x69::size(8), 0x6E::size(8), 0x61::size(8), 0x72::size(8), 0x79::size(8)>>

  @ar_signature <<0x21::size(8), 0x3C::size(8), 0x61::size(8), 0x72::size(8), 0x63::size(8), 0x68::size(8), 0x3E::size(8)>>

  @rpm_signature <<0xED::size(8), 0xAB::size(8), 0xEE::size(8), 0xDB::size(8)>>

  @z_signature <<0x1F::size(8), 0x9D::size(8)>> || <<0x1F::size(8), 0xA0::size(8)>>

  @lz_signature <<0x4C::size(8), 0x5A::size(8), 0x49::size(8), 0x50::size(8)>>

  @msi_signature <<0xD0::size(8), 0xCF::size(8), 0x11::size(8), 0xE0::size(8), 0xA1::size(8), 0xB1::size(8), 0x1A::size(8), 0xE1::size(8)>>

  @mxf_signature <<0x06::size(8), 0x0E::size(8), 0x2B::size(8), 0x34::size(8), 0x02::size(8), 0x05::size(8), 0x01::size(8), 0x01::size(8), 0x0D::size(8), 0x01::size(8), 0x02::size(8), 0x01::size(8), 0x01::size(8), 0x02::size(8)>>

  @mts_signature <<0x47::size(8)>>
  
  @mts_signature_alt <<0x47::size(8)>> || <<0x47::size(8)>>

  @blend_signature <<0x42::size(8), 0x4C::size(8), 0x45::size(8), 0x4E::size(8), 0x44::size(8), 0x45::size(8), 0x52::size(8)>>

  @bpg_signature <<0x42::size(8), 0x50::size(8), 0x47::size(8), 0xFB::size(8)>>

  def type(<<@png_signature, rest::binary>>), do: :png
  def type(<<@jpg_signature, rest::binary>>), do: :jpg
  def type(<<@gif_signature, rest::binary>>), do: :gif
  def type(<<_, _, _, _, _, _, _, _, @webp_signature, rest::binary>>), do: :webp
  def type(<<@flif_signature, rest::binary>>), do: :flif
  # This is the first version of the signature
  def type(<<@cr2_signature, rest::binary>>), do: :cr2
  def type(<<@cr2_signature, _, _, _, _, _, _, _, _, @cr2_signature_alt, rest::binary>>), do: :cr2
  def type(<<@tif_little_endian_signature, rest::binary>>), do: :tif
  def type(<<@tif_big_endian_signature, rest::binary>>), do: :tif
  def type(<<@bmp_signature, rest::binary>>), do: :bmp
  def type(<<@jxr_signature, rest::binary>>), do: :jxr
  def type(<<@psd_signature, rest::binary>>), do: :psd
  def type(<<_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, @epub_signature, rest::binary>>), do: :epub
  def type(<<_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, @xpi_signature, rest::binary>>), do: :xpi
  def type(<<@zip_signature, rest::binary>>), do: :zip
  def type(<<@m4v_signature, rest::binary>>), do: :m4v
  # At the moment the monstrosity below seems to be the best way to handle this offset for TAR files
  def type(<<_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, @tar_signature, rest::binary>>), do: :tar
  # These must be above RAR
  def type(<<@mpg_signature, rest::binary>>), do: :mpg
  def type(<<_, _, _, _, @m4a_signature, rest::binary>>), do: :m4a
  def type(<<@ttf_signature, rest::binary>>), do: :ttf
  def type(<<@ico_signature, rest::binary>>), do: :ico
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
  def type(<<_, _, _, _, @mov_signature_with_offset, rest::binary>>), do: :mov
  # The AVI check below is missing the first part of the signature and may not be safe to use.
  def type(<<_, _, _, _, _, _, _, _, @avi_signature_alt, rest::binary>>), do: :avi 
  def type(<<@wmv_signature, rest::binary>>), do: :wmv
  def type(<<@mp3_signature, rest::binary>>), do: :mp3
  def type(<<_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, @opus_signature, rest::binary>>), do: :opus
  def type(<<@ogg_signature, rest::binary>>), do: :ogg
  def type(<<@flac_signature, rest::binary>>), do: :flac
  # The WAV check below is missing the first part of the signature and may not be safe to use.
  def type(<<_, _, _, _, _, _, _, _, @wav_signature_alt, rest::binary>>), do: :wav
  def type(<<@amr_signature, rest::binary>>), do: :amr
  def type(<<@pdf_signature, rest::binary>>), do: :pdf
  def type(<<@exe_signature, rest::binary>>), do: :exe
  def type(<<@crx_signature, rest::binary>>), do: :crx 
  # The SWF check below is missing the first part of the signature and may not be safe to use.
  def type(<<_, @swf_signature_alt, rest::binary>>), do: :swf
  def type(<<@rtf_signature, rest::binary>>), do: :rtf
  def type(<<@wasm_signature, rest::binary>>), do: :wasm
  def type(<<@woff_signature, @woff_signature_alt, rest::binary>>), do: :woff
  def type(<<@woff2_signature, @woff2_signature_alt, rest::binary>>), do: :woff2
  # The EOT check below is missing the last part of the signature and may not be safe to use.
  def type(<<_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, @eot_signature, rest::binary>>), do: :eot
  def type(<<@otf_signature, rest::binary>>), do: :otf
  def type(<<@flv_signature, rest::binary>>), do: :flv
  def type(<<@ps_signature, rest::binary>>), do: :ps
  def type(<<@xz_signature, rest::binary>>), do: :xz
  def type(<<@sqlite_signature, rest::binary>>), do: :sqlite
  def type(<<@nes_signature, rest::binary>>), do: :nes
  def type(<<@cab_signature, rest::binary>>), do: :cab
  def type(<<@deb_signature, rest::binary>>), do: :deb
  def type(<<@ar_signature, rest::binary>>), do: :ar
  def type(<<@rpm_signature, rest::binary>>), do: :rpm
  def type(<<@z_signature, rest::binary>>), do: :Z
  def type(<<@lz_signature, rest::binary>>), do: :lz
  def type(<<@msi_signature, rest::binary>>), do: :msi
  def type(<<@mxf_signature, rest::binary>>), do: :mxf
  # The MTS check below is missing the last part(s) of the signature and may not be safe to use.
  def type(<<_, _, _, _, @mts_signature, rest::binary>>), do: :mts
  def type(<<@blend_signature, rest::binary>>), do: :blend
  def type(<<@bpg_signature, rest::binary>>), do: :bpg

  # TODO: attempt to find a .NEF signature 

  def type(_), do: :unknown

end
