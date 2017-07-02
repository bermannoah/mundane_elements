defmodule BasicBench do
  use Benchfella
  import MundaneElements
  
  @jpg_fixture Path.join(__DIR__, "../test/fixtures/fixture.jpg")
  @png_fixture Path.join(__DIR__, "../test/fixtures/fixture.png")
  @gif_fixture Path.join(__DIR__, "../test/fixtures/fixture.gif")
  @webp_fixture Path.join(__DIR__, "../test/fixtures/fixture.webp")
  @cr2_fixture Path.join(__DIR__, "../test/fixtures/fixture.cr2")
  @tif_little_endian_fixture Path.join(__DIR__, "../test/fixtures/fixture-little-endian.tif")
  @tif_big_endian_fixture Path.join(__DIR__, "../test/fixtures/fixture-big-endian.tif")
  @bmp_fixture Path.join(__DIR__, "../test/fixtures/fixture.bmp")
  @jxr_fixture Path.join(__DIR__, "../test/fixtures/fixture.jxr")
  @psd_fixture Path.join(__DIR__, "../test/fixtures/fixture.psd")
  @epub_fixture Path.join(__DIR__, "../test/fixtures/fixture.epub")
  @xpi_fixture Path.join(__DIR__, "../test/fixtures/fixture.xpi")
  @zip_fixture Path.join(__DIR__, "../test/fixtures/fixture.zip")
  @tar_fixture Path.join(__DIR__, "../test/fixtures/fixture.tar")
  @rar_fixture Path.join(__DIR__, "../test/fixtures/fixture.rar")
  @gz_fixture Path.join(__DIR__, "../test/fixtures/fixture.tar.gz")
  @bz2_fixture Path.join(__DIR__, "../test/fixtures/fixture.bz2")
  @seven_zip_fixture Path.join(__DIR__, "../test/fixtures/fixture.7z")
  @dmg_fixture Path.join(__DIR__, "../test/fixtures/fixture.dmg")
  @mp4_fixture Path.join(__DIR__, "../test/fixtures/fixture.mp4")
  @m4v_fixture Path.join(__DIR__, "../test/fixtures/fixture.m4v")
  @mid_fixture Path.join(__DIR__, "../test/fixtures/fixture.mid")
  @mkv_fixture Path.join(__DIR__, "../test/fixtures/fixture.mkv")
  @webm_fixture Path.join(__DIR__, "../test/fixtures/fixture.webm")
  @mov_fixture Path.join(__DIR__, "../test/fixtures/fixture.mov")
  @avi_fixture Path.join(__DIR__, "../test/fixtures/fixture.avi")
  @wmv_fixture Path.join(__DIR__, "../test/fixtures/fixture.wmv")
  @mpg_fixture Path.join(__DIR__, "../test/fixtures/fixture.mpg")
  @mp3_fixture Path.join(__DIR__, "../test/fixtures/fixture.mp3")
  @m4a_fixture Path.join(__DIR__, "../test/fixtures/fixture.m4a")
  @opus_fixture Path.join(__DIR__, "../test/fixtures/fixture.opus")
  @ogg_fixture Path.join(__DIR__, "../test/fixtures/fixture.ogg")
  @flac_fixture Path.join(__DIR__, "../test/fixtures/fixture.flac")
  @wav_fixture Path.join(__DIR__, "../test/fixtures/fixture.wav")
  @amr_fixture Path.join(__DIR__, "../test/fixtures/fixture.amr")
  @pdf_fixture Path.join(__DIR__, "../test/fixtures/fixture.pdf")
  @exe_fixture Path.join(__DIR__, "../test/fixtures/fixture.exe")
  @swf_fixture Path.join(__DIR__, "../test/fixtures/fixture.swf")
  @rtf_fixture Path.join(__DIR__, "../test/fixtures/fixture.rtf")
  @wasm_fixture Path.join(__DIR__, "../test/fixtures/fixture.wasm")
  @woff_fixture Path.join(__DIR__, "../test/fixtures/fixture.woff")
  @woff2_fixture Path.join(__DIR__, "../test/fixtures/fixture.woff2")
  @eot_fixture Path.join(__DIR__, "../test/fixtures/fixture.eot")
  @ttf_fixture Path.join(__DIR__, "../test/fixtures/fixture.ttf")
  @otf_fixture Path.join(__DIR__, "../test/fixtures/fixture.otf")
  @ico_fixture Path.join(__DIR__, "../test/fixtures/fixture.ico")
  @flv_fixture Path.join(__DIR__, "../test/fixtures/fixture.flv")
  @ps_fixture Path.join(__DIR__, "../test/fixtures/fixture.ps")
  @xz_fixture Path.join(__DIR__, "../test/fixtures/fixture.tar.xz")
  @sqlite_fixture Path.join(__DIR__, "../test/fixtures/fixture.sqlite")
  @nes_fixture Path.join(__DIR__, "../test/fixtures/fixture.nes")
  @crx_fixture Path.join(__DIR__, "../test/fixtures/fixture.crx")
  @cab_fixture Path.join(__DIR__, "../test/fixtures/fixture.cab")
  @deb_fixture Path.join(__DIR__, "../test/fixtures/fixture.deb")
  @ar_fixture Path.join(__DIR__, "../test/fixtures/fixture.ar")
  @rpm_fixture Path.join(__DIR__, "../test/fixtures/fixture.rpm")
  @z_fixture Path.join(__DIR__, "../test/fixtures/fixture.tar.Z")
  @lz_fixture Path.join(__DIR__, "../test/fixtures/fixture.tar.lz")
  @msi_fixture Path.join(__DIR__, "../test/fixtures/fixture.msi")
  @mxf_fixture Path.join(__DIR__, "../test/fixtures/fixture.mxf")
  @mts_fixture Path.join(__DIR__, "../test/fixtures/fixture.mts")
  @blend_fixture Path.join(__DIR__, "../test/fixtures/fixture.blend")
  @bpg_fixture Path.join(__DIR__, "../test/fixtures/fixture.bpg")
  @unknown_fixture Path.join(__DIR__, "../test/fixtures/fixture.mystery")

  bench "jpg" do
    MundaneElements.get_file_type(@jpg_fixture)
  end

  bench "png" do
    MundaneElements.get_file_type(@png_fixture)
  end

  bench "gif" do
    MundaneElements.get_file_type(@gif_fixture)
  end

  bench "webp" do
    MundaneElements.get_file_type(@webp_fixture)
  end

  bench "cr2" do
    MundaneElements.get_file_type(@cr2_fixture)
  end

  bench "little endian tif" do
    MundaneElements.get_file_type(@tif_little_endian_fixture)
  end

  bench "big endian tif" do
    MundaneElements.get_file_type(@tif_big_endian_fixture)
  end

  bench "bmp" do
    MundaneElements.get_file_type(@bmp_fixture)
  end

  bench "jxr" do
    MundaneElements.get_file_type(@jxr_fixture)
  end

  bench "psd" do
    MundaneElements.get_file_type(@psd_fixture)
  end

  bench "epub" do
    MundaneElements.get_file_type(@epub_fixture)
  end

  bench " xpi" do
    MundaneElements.get_file_type(@xpi_fixture)
  end

  bench "zip" do
    MundaneElements.get_file_type(@zip_fixture)
  end

  bench "tar" do
    MundaneElements.get_file_type(@tar_fixture)
  end

  bench "rar" do
    MundaneElements.get_file_type(@rar_fixture)
  end

  bench ".tar.gz" do
    MundaneElements.get_file_type(@gz_fixture)
  end

  bench ".bz2" do
    MundaneElements.get_file_type(@bz2_fixture)
  end

  bench ".7z" do
    MundaneElements.get_file_type(@seven_zip_fixture)
  end

  bench ".dmg" do
    MundaneElements.get_file_type(@dmg_fixture)
  end

  bench ".mp4" do
    MundaneElements.get_file_type(@mp4_fixture)
  end

  bench ".m4v" do
    MundaneElements.get_file_type(@m4v_fixture)
  end

  bench ".mid" do
    MundaneElements.get_file_type(@mid_fixture)
  end

  bench ".mkv" do
    MundaneElements.get_file_type(@mkv_fixture)
  end

  bench ".webm" do
    MundaneElements.get_file_type(@webm_fixture)
  end

  bench ".mov" do
    MundaneElements.get_file_type(@mov_fixture)
  end

  bench ".avi" do
    MundaneElements.get_file_type(@avi_fixture)
  end

  bench ".wmv" do
    MundaneElements.get_file_type(@wmv_fixture)
  end

  bench ".mpg" do
    MundaneElements.get_file_type(@mpg_fixture)
  end

  bench ".mp3" do
    MundaneElements.get_file_type(@mp3_fixture)
  end

  bench ".m4a" do
    MundaneElements.get_file_type(@m4a_fixture)
  end

  bench " .opus" do
    MundaneElements.get_file_type(@opus_fixture)
  end

  bench " .ogg" do
    MundaneElements.get_file_type(@ogg_fixture)
  end

  bench ".flac" do
    MundaneElements.get_file_type(@flac_fixture)
  end

  bench ".wav" do
    MundaneElements.get_file_type(@wav_fixture)
  end

  bench ".amr" do
    MundaneElements.get_file_type(@amr_fixture)
  end

  bench ".pdf" do
    MundaneElements.get_file_type(@pdf_fixture)
  end

  bench " .exe" do
    MundaneElements.get_file_type(@exe_fixture)
  end

  bench ".swf" do
    MundaneElements.get_file_type(@swf_fixture)
  end

  bench ".rtf" do
    MundaneElements.get_file_type(@rtf_fixture)
  end

  bench ".wasm" do
    MundaneElements.get_file_type(@wasm_fixture)
  end

  bench ".woff" do
    MundaneElements.get_file_type(@woff_fixture)
  end

  bench ".woff2" do
    MundaneElements.get_file_type(@woff2_fixture)
  end

  bench " .eot" do
    MundaneElements.get_file_type(@eot_fixture)
  end

  bench ".ttf" do
    MundaneElements.get_file_type(@ttf_fixture)
  end

  bench ".otf" do
    MundaneElements.get_file_type(@otf_fixture)
  end

  bench ".ico" do
    MundaneElements.get_file_type(@ico_fixture)
  end

  bench ".flv" do
    MundaneElements.get_file_type(@flv_fixture)
  end

  bench ".ps" do
    MundaneElements.get_file_type(@ps_fixture)
  end

  bench ".xz" do
    MundaneElements.get_file_type(@xz_fixture)
  end

  bench ".sqlite" do
    MundaneElements.get_file_type(@sqlite_fixture)
  end

  bench ".nes" do
    MundaneElements.get_file_type(@nes_fixture)
  end

  bench ".crx" do
    MundaneElements.get_file_type(@crx_fixture)
  end

  bench ".cab" do
    MundaneElements.get_file_type(@cab_fixture)
  end

  bench ".deb" do
    MundaneElements.get_file_type(@deb_fixture)
  end

  bench ".ar" do
    MundaneElements.get_file_type(@ar_fixture)
  end

  bench ".rpm" do
    MundaneElements.get_file_type(@rpm_fixture)
  end

  bench ".z" do
    MundaneElements.get_file_type(@z_fixture)
  end

  bench ".lz" do
    MundaneElements.get_file_type(@lz_fixture)
  end

  bench ".msi" do
    MundaneElements.get_file_type(@msi_fixture)
  end

  bench ".mxf" do
    MundaneElements.get_file_type(@mxf_fixture)
  end

  bench ".mts" do
    MundaneElements.get_file_type(@mts_fixture)
  end

  bench ".blend" do
    MundaneElements.get_file_type(@blend_fixture)
  end

  bench ".bpg" do
    MundaneElements.get_file_type(@bpg_fixture)
  end

  bench ".get_file_type returns unknown if it doesn't have a signature" do
    MundaneElements.get_file_type(@unknown_fixture)
  end
end
