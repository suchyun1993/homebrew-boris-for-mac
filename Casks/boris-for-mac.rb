cask "boris-for-mac" do
  arch arm: "arm64"

  version "2.0.1"
  sha256 arm: "8cbb764fe0afc127e128549d815e9c2eb5c199946ef575a9e75de334def0dd3b"

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
