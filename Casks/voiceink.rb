cask "voiceink" do
  version "1.72.1"
  sha256 "ad2f2270f88bdfc468d7d8089424ebf3fc8c0cb25e069510dcf0bb59eb29f05b"

  url "https://github.com/debdutgoswami/VoiceInk/releases/download/v#{version}/VoiceInk.dmg"
  name "VoiceInk"
  desc "Voice-to-text transcription app using Whisper"
  homepage "https://github.com/debdutgoswami/VoiceInk"

  app "VoiceInk.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/VoiceInk.app"]
  end

  zap trash: [
    "~/Library/Caches/com.prakashjoshipax.VoiceInk",
    "~/Library/Preferences/com.prakashjoshipax.VoiceInk.plist",
  ]
end
