class Iosrssi < Formula
  desc "A Swift command-line tool to parse iOS device sysdiagnose log files and retrieve the wifi network RSSI statistics."
  homepage "https://github.com/DeveloperMaris/iosrssi"
  url "https://github.com/DeveloperMaris/iosrssi/archive/v1.1.0.zip"
  sha256 "5ea3ce1cca6795230cf2ac48ca935e02ba8918541e64217ea0c9fbd5ed9a5ff7"
  license "MIT"

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install '.build/release/iosrssi'
    ohai "Done! You can now run 'iosrssi help' for more information."
  end
end
