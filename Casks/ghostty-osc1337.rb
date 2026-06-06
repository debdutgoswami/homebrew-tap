cask "ghostty-osc1337" do
  version "1.3.2-osc1337.1"
  sha256 "f86949afe52cc176ba27323ef12cf057084003d27a2346d8cd5b1fa87ff9b7f2"

  url "https://github.com/debdutgoswami/ghostty/releases/download/v#{version}/Ghostty-#{version}.zip"
  name "Ghostty (OSC 1337 patched)"
  desc "Ghostty terminal — patched with OSC 1337 OpenURL"
  homepage "https://github.com/debdutgoswami/ghostty"

  conflicts_with cask: "ghostty"

  app "Ghostty.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Ghostty.app"]
  end

  zap trash: [
    "~/Library/Caches/com.mitchellh.ghostty",
    "~/Library/Preferences/com.mitchellh.ghostty.plist",
  ]
end

