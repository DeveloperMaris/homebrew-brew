class Iosrssi < Formula
  desc "A Swift command-line tool to parse iOS device sysdiagnose log files and retrieve the wifi network RSSI statistics."
  homepage "https://github.com/DeveloperMaris/iosrssi"
  url "https://github.com/DeveloperMaris/iosrssi/archive/1.3.1.zip"
  sha256 "ad430984610e4567214756ad4c4b8c8f057b0f6d6f32717a8bc24b05d1b19324"
  license "MIT"

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install '.build/release/iosrssi'
    ohai "Done! You can now run 'iosrssi help' for more information."
  end
end
