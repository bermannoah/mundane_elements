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


end
