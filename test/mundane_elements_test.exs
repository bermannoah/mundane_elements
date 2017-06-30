defmodule MundaneElementsTest do
  use ExUnit.Case

  @jpg_fixture Path.join(__DIR__, "fixtures/fixture.jpg")
  @png_fixture Path.join(__DIR__, "fixtures/fixture.png")
  @gif_fixture Path.join(__DIR__, "fixtures/fixture.gif")
  @webp_fixture Path.join(__DIR__, "fixtures/fixture.webp")
  @cr2_fixture Path.join(__DIR__, "fixtures/fixture.cr2")
  @tif_little_endian_fixture Path.join(__DIR__, "fixtures/fixture-little-endian.tif")
  @tif_big_endian_fixture Path.join(__DIR__, "fixtures/fixture-big-endian.tif")
  @bmp_fixture Path.join(__DIR__, "fixtures/fixture.bmp")
  @jxr_fixture Path.join(__DIR__, "fixtures/fixture.jxr")
  @psd_fixture Path.join(__DIR__, "fixtures/fixture.psd")
  @epub_fixture Path.join(__DIR__, "fixtures/fixture.epub")
  @xpi_fixture Path.join(__DIR__, "fixtures/fixture.xpi")
  @zip_fixture Path.join(__DIR__, "fixtures/fixture.zip")
  @tar_fixture Path.join(__DIR__, "fixtures/fixture.tar")
  @rar_fixture Path.join(__DIR__, "fixtures/fixture.rar")
  @gz_fixture Path.join(__DIR__, "fixtures/fixture.tar.gz")
  @bz2_fixture Path.join(__DIR__, "fixtures/fixture.bz2")
  @seven_zip_fixture Path.join(__DIR__, "fixtures/fixture.7z")
  @dmg_fixture Path.join(__DIR__, "fixtures/fixture.dmg")
  @mp4_fixture Path.join(__DIR__, "fixtures/fixture.mp4") # There are several types to test for this. Pending.
  @m4v_fixture Path.join(__DIR__, "fixtures/fixture.m4v")
  @mid_fixture Path.join(__DIR__, "fixtures/fixture.mid")
  @mkv_fixture Path.join(__DIR__, "fixtures/fixture.mkv")
  @webm_fixture Path.join(__DIR__, "fixtures/fixture.webm")
  @mov_fixture Path.join(__DIR__, "fixtures/fixture.mov")
  @avi_fixture Path.join(__DIR__, "fixtures/fixture.avi")
  @wmv_fixture Path.join(__DIR__, "fixtures/fixture.wmv")
  @mpg_fixture Path.join(__DIR__, "fixtures/fixture.mpg")
  @mp3_fixture Path.join(__DIR__, "fixtures/fixture.mp3")
  @m4a_fixture Path.join(__DIR__, "fixtures/fixture.m4a")
  @opus_fixture Path.join(__DIR__, "fixtures/fixture.opus")
  @ogg_fixture Path.join(__DIR__, "fixtures/fixture.ogg")
  @flac_fixture Path.join(__DIR__, "fixtures/fixture.flac")
  @wav_fixture Path.join(__DIR__, "fixtures/fixture.wav")
  @amr_fixture Path.join(__DIR__, "fixtures/fixture.amr")
  @pdf_fixture Path.join(__DIR__, "fixtures/fixture.pdf")
  @exe_fixture Path.join(__DIR__, "fixtures/fixture.exe")
  @swf_fixture Path.join(__DIR__, "fixtures/fixture.swf")
  @rtf_fixture Path.join(__DIR__, "fixtures/fixture.rtf")
  @wasm_fixture Path.join(__DIR__, "fixtures/fixture.wasm")
  @woff_fixture Path.join(__DIR__, "fixtures/fixture.woff")
  @woff2_fixture Path.join(__DIR__, "fixtures/fixture.woff2")
  @eot_fixture Path.join(__DIR__, "fixtures/fixture.eot")
  @ttf_fixture Path.join(__DIR__, "fixtures/fixture.ttf")
  @otf_fixture Path.join(__DIR__, "fixtures/fixture.otf")
  @ico_fixture Path.join(__DIR__, "fixtures/fixture.ico")
  @flv_fixture Path.join(__DIR__, "fixtures/fixture.flv")
  @ps_fixture Path.join(__DIR__, "fixtures/fixture.ps")
  @xz_fixture Path.join(__DIR__, "fixtures/fixture.tar.xz")
  @sqlite_fixture Path.join(__DIR__, "fixtures/fixture.sqlite")
  @nes_fixture Path.join(__DIR__, "fixtures/fixture.nes")
  @crx_fixture Path.join(__DIR__, "fixtures/fixture.crx")
  @cab_fixture Path.join(__DIR__, "fixtures/fixture.cab")
  @deb_fixture Path.join(__DIR__, "fixtures/fixture.deb")
  @ar_fixture Path.join(__DIR__, "fixtures/fixture.ar")
  @rpm_fixture Path.join(__DIR__, "fixtures/fixture.rpm")
  @z_fixture Path.join(__DIR__, "fixtures/fixture.tar.Z")
  @lz_fixture Path.join(__DIR__, "fixtures/fixture.tar.lz")
  @msi_fixture Path.join(__DIR__, "fixtures/fixture.msi")
  @mxf_fixture Path.join(__DIR__, "fixtures/fixture.mxf")
  @mts_fixture Path.join(__DIR__, "fixtures/fixture.mts")
  @blend_fixture Path.join(__DIR__, "fixtures/fixture.blend")
  @bpg_fixture Path.join(__DIR__, "fixtures/fixture.bpg")
  @unknown_fixture Path.join(__DIR__, "fixtures/fixture.mystery")


  test ".get_file_type correctly identifies a jpg" do
    result = MundaneElements.get_file_type(@jpg_fixture)
    assert result == :jpg
  end

  test ".get_file_type correctly identifies a png" do
    result = MundaneElements.get_file_type(@png_fixture)
    assert result == :png
  end

  test ".get_file_type correctly identifies a gif" do
    result = MundaneElements.get_file_type(@gif_fixture)
    assert result == :gif
  end

  @tag :skip
  test ".get_file_type correctly identifies a webp" do
    result = MundaneElements.get_file_type(@webp_fixture)
    assert result == :webp
  end

  test ".get_file_type correctly identifies a cr2" do
    result = MundaneElements.get_file_type(@cr2_fixture)
    assert result == :cr2
  end

  @tag :skip
  test ".get_file_type correctly identifies a little endian tif" do
    result = MundaneElements.get_file_type(@tif_little_endian_fixture)
    assert result == :tif
  end

  test ".get_file_type correctly identifies a big endian tif" do
    result = MundaneElements.get_file_type(@tif_big_endian_fixture)
    assert result == :tif
  end

  test ".get_file_type correctly identifies a bmp" do
    result = MundaneElements.get_file_type(@bmp_fixture)
    assert result == :bmp
  end

  test ".get_file_type correctly identifies a jxr" do
    result = MundaneElements.get_file_type(@jxr_fixture)
    assert result == :jxr
  end

  test ".get_file_type correctly identifies a psd" do
    result = MundaneElements.get_file_type(@psd_fixture)
    assert result == :psd
  end

  @tag :skip
  test ".get_file_type correctly identifies a epub" do
    result = MundaneElements.get_file_type(@epub_fixture)
    assert result == :epub
  end

  @tag :skip
  test ".get_file_type correctly identifies an xpi" do
    result = MundaneElements.get_file_type(@xpi_fixture)
    assert result == :xpi
  end

  @tag :skip
  test ".get_file_type correctly identifies a zip" do
    result = MundaneElements.get_file_type(@zip_fixture)
    assert result == :zip
  end

  @tag :skip
  test ".get_file_type correctly identifies a tar" do
    result = MundaneElements.get_file_type(@tar_fixture)
    assert result == :tar
  end

  @tag :skip
  test ".get_file_type correctly identifies a rar" do
    result = MundaneElements.get_file_type(@rar_fixture)
    assert result == :rar
  end

  test ".get_file_type correctly identifies a .tar.gz" do
    result = MundaneElements.get_file_type(@gz_fixture)
    assert result == :gz
  end

  test ".get_file_type correctly identifies a .bz2" do
    result = MundaneElements.get_file_type(@bz2_fixture)
    assert result == :bz2
  end

  test ".get_file_type correctly identifies a .7z" do
    result = MundaneElements.get_file_type(@seven_zip_fixture)
    assert result == :seven_zip
  end

  test ".get_file_type correctly identifies a .dmg" do
    result = MundaneElements.get_file_type(@dmg_fixture)
    assert result == :dmg
  end

  @tag :skip
  test ".get_file_type correctly identifies a .mp4" do
    result = MundaneElements.get_file_type(@mp4_fixture)
    assert result == :mp4
  end

  test ".get_file_type correctly identifies a .m4v" do
    result = MundaneElements.get_file_type(@m4v_fixture)
    assert result == :m4v
  end

  test ".get_file_type correctly identifies a .mid" do
    result = MundaneElements.get_file_type(@mid_fixture)
    assert result == :mid
  end

  @tag :skip
  test ".get_file_type correctly identifies a .mkv" do
    result = MundaneElements.get_file_type(@mkv_fixture)
    assert result == :mkv
  end

  @tag :skip
  test ".get_file_type correctly identifies a .webm" do
    result = MundaneElements.get_file_type(@webm_fixture)
    assert result == :webm
  end

  @tag :skip
  test ".get_file_type correctly identifies a .mov" do
    result = MundaneElements.get_file_type(@mov_fixture)
    assert result == :mov
  end

  @tag :skip
  test ".get_file_type correctly identifies a .avi" do
    result = MundaneElements.get_file_type(@avi_fixture)
    assert result == :avi
  end

  test ".get_file_type correctly identifies a .wmv" do
    result = MundaneElements.get_file_type(@wmv_fixture)
    assert result == :wmv
  end

  test ".get_file_type correctly identifies a .mpg" do
    result = MundaneElements.get_file_type(@mpg_fixture)
    assert result == :mpg
  end

  test ".get_file_type correctly identifies a .mp3" do
    result = MundaneElements.get_file_type(@mp3_fixture)
    assert result == :mp3
  end

  @tag :skip # throwing the "secretly a rar" error for some reason
  test ".get_file_type correctly identifies a .m4a" do
    result = MundaneElements.get_file_type(@m4a_fixture)
    assert result == :m4a
  end

  @tag :skip # offset problemss
  test ".get_file_type correctly identifies an .opus" do
    result = MundaneElements.get_file_type(@opus_fixture)
    assert result == :opus
  end

  test ".get_file_type correctly identifies an .ogg" do
    result = MundaneElements.get_file_type(@ogg_fixture)
    assert result == :ogg
  end

  test ".get_file_type correctly identifies a .flac" do
    result = MundaneElements.get_file_type(@flac_fixture)
    assert result == :flac
  end

  @tag :skip # Offset
  test ".get_file_type correctly identifies a .wav" do
    result = MundaneElements.get_file_type(@wav_fixture)
    assert result == :wav
  end

  test ".get_file_type correctly identifies a .amr" do
    result = MundaneElements.get_file_type(@amr_fixture)
    assert result == :amr
  end

  test ".get_file_type correctly identifies a .pdf" do
    result = MundaneElements.get_file_type(@pdf_fixture)
    assert result == :pdf
  end

  test ".get_file_type correctly identifies an .exe" do
    result = MundaneElements.get_file_type(@exe_fixture)
    assert result == :exe
  end

  @tag :skip # Offset
  test ".get_file_type correctly identifies a .swf" do
    result = MundaneElements.get_file_type(@swf_fixture)
    assert result == :swf
  end

  test ".get_file_type correctly identifies a .rtf" do
    result = MundaneElements.get_file_type(@rtf_fixture)
    assert result == :rtf
  end

  @tag :skip # no fixture for old men I mean this currently
  test ".get_file_type correctly identifies a .wasm" do
    result = MundaneElements.get_file_type(@wasm_fixture)
    assert result == :wasm
  end

  @tag :skip # offset issues
  test ".get_file_type correctly identifies a .woff" do
    result = MundaneElements.get_file_type(@woff_fixture)
    assert result == :woff
  end

  @tag :skip # offset issues
  test ".get_file_type correctly identifies a .woff2" do
    result = MundaneElements.get_file_type(@woff2_fixture)
    assert result == :woff2
  end

  @tag :skip # offset issues
  test ".get_file_type correctly identifies an .eot" do
    result = MundaneElements.get_file_type(@eot_fixture)
    assert result == :eot
  end

  test ".get_file_type correctly identifies a .ttf" do
    result = MundaneElements.get_file_type(@ttf_fixture)
    assert result == :ttf
  end

  test ".get_file_type correctly identifies a .otf" do
    result = MundaneElements.get_file_type(@otf_fixture)
    assert result == :otf
  end

  test ".get_file_type correctly identifies a .ico" do
    result = MundaneElements.get_file_type(@ico_fixture)
    assert result == :ico
  end

  test ".get_file_type correctly identifies a .flv" do
    result = MundaneElements.get_file_type(@flv_fixture)
    assert result == :flv
  end

  test ".get_file_type correctly identifies a .ps" do
    result = MundaneElements.get_file_type(@ps_fixture)
    assert result == :ps
  end

  test ".get_file_type correctly identifies a .xz" do
    result = MundaneElements.get_file_type(@xz_fixture)
    assert result == :xz
  end

  test ".get_file_type correctly identifies a .sqlite" do
    result = MundaneElements.get_file_type(@sqlite_fixture)
    assert result == :sqlite
  end

  test ".get_file_type correctly identifies a .nes" do
    result = MundaneElements.get_file_type(@nes_fixture)
    assert result == :nes
  end

  test ".get_file_type correctly identifies a .crx" do
    result = MundaneElements.get_file_type(@crx_fixture)
    assert result == :crx
  end

  test ".get_file_type correctly identifies a .cab" do
    result = MundaneElements.get_file_type(@cab_fixture)
    assert result == :cab
  end

  test ".get_file_type correctly identifies a .deb" do
    result = MundaneElements.get_file_type(@deb_fixture)
    assert result == :deb
  end

  test ".get_file_type correctly identifies a .ar" do
    result = MundaneElements.get_file_type(@ar_fixture)
    assert result == :ar
  end

  test ".get_file_type correctly identifies a .rpm" do
    result = MundaneElements.get_file_type(@rpm_fixture)
    assert result == :rpm
  end

  @tag :skip # failing for unknown reasons
  test ".get_file_type correctly identifies a .z" do
    result = MundaneElements.get_file_type(@z_fixture)
    assert result == :z
  end

  test ".get_file_type correctly identifies a .lz" do
    result = MundaneElements.get_file_type(@lz_fixture)
    assert result == :lz
  end

  test ".get_file_type correctly identifies a .msi" do
    result = MundaneElements.get_file_type(@msi_fixture)
    assert result == :msi
  end

  @tag :skip # no fixture file for this filetype
  test ".get_file_type correctly identifies a .mxf" do
    result = MundaneElements.get_file_type(@mxf_fixture)
    assert result == :mxf
  end

  @tag :skip # serious offset issues
  test ".get_file_type correctly identifies a .mts" do
    result = MundaneElements.get_file_type(@mts_fixture)
    assert result == :mts
  end

  @tag :skip # no fixture file for this filetype
  test ".get_file_type correctly identifies a .blend" do
    result = MundaneElements.get_file_type(@blend_fixture)
    assert result == :blend
  end

  @tag :skip # no fixture file for this filetype
  test ".get_file_type correctly identifies a .bpg" do
    result = MundaneElements.get_file_type(@bpg_fixture)
    assert result == :bpg
  end

  test ".get_file_type returns unknown if it doesn't have a signature" do
    result = MundaneElements.get_file_type(@unknown_fixture)
    assert result == :unknown
  end





end
