cask "ghostty-osc1337" do
  version "1.3.1-osc1337.1"
  sha256 "065dad1031ad2dbda8e4e2eaa12aed7f5963ff8ca5d86b425c5b171e4755be0e"

  url "https://github.com/debdutgoswami/ghostty/releases/download/v#{version}/Ghostty-#{version}.zip"
  name "Ghostty (OSC 1337 patched)"
  desc "Ghostty terminal — patched with OSC 1337 OpenURL"
  homepage "https://github.com/debdutgoswami/ghostty"

  conflicts_with cask: "ghostty"

  app "Ghostty.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Ghostty.app"]
  end

  zap trash: [
    "~/Library/Caches/com.mitchellh.ghostty",
    "~/Library/Preferences/com.mitchellh.ghostty.plist",
  ]
end

