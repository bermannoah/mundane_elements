defmodule MundaneElementsTest do
  use ExUnit.Case

  @jpg_fixture Path.join(__DIR__, "fixtures/fixture.jpg")
  @png_fixture Path.join(__DIR__, "fixtures/fixture.png")
  @gif_fixture Path.join(__DIR__, "fixtures/fixture.gif")
  @webp_fixture Path.join(__DIR__, "fixtures/fixture.webp")
  @cr2_fixture Path.join(__DIR__, "fixtures/fixture.cr2")
  @tif_fixture Path.join(__DIR__, "fixtures/fixture.tif")

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

  test ".get_file_type correctly identifies a webp" do
    result = MundaneElements.get_file_type(@webp_fixture)
    assert result == :webp
  end

  test ".get_file_type correctly identifies a cr2" do
    result = MundaneElements.get_file_type(@cr2_fixture)
    assert result == :cr2
  end

  test ".get_file_type correctly identifies a tif" do
    result = MundaneElements.get_file_type(@tif_fixture)
    assert result == :tif
  end

end
