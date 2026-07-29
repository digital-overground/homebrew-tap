cask "pied" do
  version :latest
  sha256 :no_check

  url "https://github.com/digital-overground/pied-ide/releases/latest/download/Pied-aarch64.dmg",
      verified: "github.com/digital-overground/pied-ide/"
  name "Pied IDE"
  desc "Open-source code editor"
  homepage "https://github.com/digital-overground/pied-ide"

  depends_on arch: :arm64

  app "Pied.app"
  binary "#{appdir}/Pied.app/Contents/MacOS/cli", target: "pied"
end
