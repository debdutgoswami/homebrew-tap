cask "ghostty-osc1337" do
  version "1.3.2-osc1337.2"
  sha256 "e813571c9f94e9a19b97151ad28a32dd1435101a54633f704fd62e74870c1784"

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

