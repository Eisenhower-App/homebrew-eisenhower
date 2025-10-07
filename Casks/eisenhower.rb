cask "eisenhower" do
  version "1.0.22"
  sha256 "fb91cb9c0de8d55c83928b71b7054214ede701677c3f49003b7d66793e3ed7ec"

  url "https://github.com/Eisenhower-App/eisenhower-releases/releases/download/v#{version}/Eisenhower-v#{version}-Installer.dmg"
  name "Eisenhower"
  desc "Task management app using the Eisenhower Matrix"
  homepage "https://github.com/Eisenhower-App/eisenhower-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Eisenhower.app"

  zap trash: [
    "~/Library/Application Support/Eisenhower",
    "~/Library/Caches/nl.funky-monkey.Eisenhower",
    "~/Library/Preferences/nl.funky-monkey.Eisenhower.plist",
    "~/Library/Saved Application State/nl.funky-monkey.Eisenhower.savedState",
  ]
end
