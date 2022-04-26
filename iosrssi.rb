class Iosrssi < Formula
  desc "A Swift command-line tool to parse iOS device sysdiagnose log files and retrieve the wifi network RSSI statistics."
  homepage "https://github.com/DeveloperMaris/iosrssi"
  url "https://github.com/DeveloperMaris/iosrssi/archive/1.5.0.zip"
  sha256 "f0fb90ecbec4259c01fc4ed8b91bcdc77b1b9e8d9820c0a29f807e5d91d1a5dc"
  license "MIT"

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install '.build/release/iosrssi'
    ohai "Done! You can now run 'iosrssi help' for more information."
  end
end
