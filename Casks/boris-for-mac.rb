cask "boris-for-mac" do
  arch arm: "arm64"

  version "2.0.0"
  sha256 arm: "28e8638f3ae55bc96a0202cba8078ae54c7ee83188748625049a1314c1ee8d82"

  url "https://github.com/suchyun1993/BORIS_for_Mac/releases/download/v#{version}/BORIS_for_Mac-#{version}-#{arch}.dmg"
  name "BORIS_for_Mac"
  desc "BORIS embedded-video macOS build"
  homepage "https://github.com/suchyun1993/BORIS_for_Mac"

  depends_on arch: :arm64
  depends_on formula: "ffmpeg"
  depends_on macos: ">= :monterey"

  app "BORIS_for_Mac.app"

  zap trash: [
    "~/.boris_for_mac",
    "~/.boris_for_mac-recent-projects",
  ]
end
