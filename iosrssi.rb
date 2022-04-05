class Iosrssi < Formula
  desc "A Swift command-line tool to parse iOS device sysdiagnose log files and retrieve the wifi network RSSI statistics."
  homepage "https://github.com/DeveloperMaris/iosrssi"
  url "https://github.com/DeveloperMaris/iosrssi/archive/1.4.0.zip"
  sha256 "13b114663ef1990c758f67216cc11c4750e8567ec201366d22bde29082658ce1"
  license "MIT"

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install '.build/release/iosrssi'
    ohai "Done! You can now run 'iosrssi help' for more information."
  end
end
