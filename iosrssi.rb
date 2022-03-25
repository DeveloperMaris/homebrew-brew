class Iosrssi < Formula
  desc "A Swift command-line tool to parse iOS device sysdiagnose log files and retrieve the wifi network RSSI statistics."
  homepage "https://github.com/DeveloperMaris/iosrssi"
  url "https://github.com/DeveloperMaris/iosrssi/archive/1.3.0.zip"
  sha256 "1f87b228a5ab1348082705f2740576f4c8d60d76d5bac5d1e02e7283e1d44487"
  license "MIT"

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install '.build/release/iosrssi'
    ohai "Done! You can now run 'iosrssi help' for more information."
  end
end
