defmodule MundaneElementsTest do
  use ExUnit.Case

  @jpg_fixture Path.join(__DIR__, "fixtures/test-jpg.jpg")
  @png_fixture Path.join(__DIR__, "fixtures/test-png.png")

  test ".get_file_type correctly identifies a jpg" do
    result = MundaneElements.get_file_type(@jpg_fixture)
    assert result == :jpg
  end

  test ".get_file_type correctly identifies a png" do
    result = MundaneElements.get_file_type(@png_fixture)
    assert result == :png
  end
end
