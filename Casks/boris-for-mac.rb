cask "boris-for-mac" do
  arch arm: "arm64"

  version "2.0.2"
  sha256 arm: "8f4042847000cd189bbe9fb434a8ff8127357b5f8574d6b283127aab303657f3"

  url "https://github.com/suchyun1993/BORIS_for_mac/releases/download/v#{version}/BORIS_for_Mac-#{version}-#{arch}.dmg"
  name "BORIS_for_Mac"
  desc "BORIS embedded-video macOS build"
  homepage "https://github.com/suchyun1993/BORIS_for_mac"

  depends_on arch: :arm64
  depends_on formula: "ffmpeg"
  depends_on macos: ">= :monterey"

  app "BORIS_for_Mac.app"

  zap trash: [
    "~/.boris_for_mac",
    "~/.boris_for_mac-recent-projects",
  ]
end
