cask "voiceink" do
  version "1.69.1"
  sha256 "75a00b4b9abeb133d6943f820bff7055455b9b906ab6e4eb01a085c142d7451f"

  url "https://github.com/debdutgoswami/VoiceInk/releases/download/v#{version}/VoiceInk.dmg"
  name "VoiceInk"
  desc "Voice-to-text transcription app using Whisper"
  homepage "https://github.com/debdutgoswami/VoiceInk"

  app "VoiceInk.app"

  zap trash: [
    "~/Library/Caches/com.prakashjoshipax.VoiceInk",
    "~/Library/Preferences/com.prakashjoshipax.VoiceInk.plist",
  ]
end
