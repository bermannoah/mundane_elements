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





end
