cask "voiceink" do
  version "1.69.2"
  sha256 "218e2a0ff1a8c59c661f835ca485b6808c0722dda270be4ef517ee507c47b77a"

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
