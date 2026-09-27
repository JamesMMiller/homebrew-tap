cask "profit-admin" do
  version "0.1.7"
  sha256 "4ffbff04aed0dcbb941620ead92f2ce48585fc5c0bb17175bb108ba9818b4ede"

  url "https://github.com/JamesMMiller/homebrew-tap/releases/download/profit-admin-v0.1.7/ProfitAdmin-#{version}.dmg"
  name "Profit Admin"
  desc "Native desk for Our Tech Profit Admin"
  homepage "https://desk.ourtechaccessories.com/"

  depends_on macos: ">= :sonoma"

  app "Profit Admin.app"

  # The app is ad-hoc signed (no Developer ID), so Gatekeeper would refuse to open it.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Profit Admin.app"]
  end

  zap trash: [
    "~/Library/Caches/com.ourtechaccessories.profitadmin",
    "~/Library/HTTPStorages/com.ourtechaccessories.profitadmin",
    "~/Library/Preferences/com.ourtechaccessories.profitadmin.plist",
    "~/Library/Saved Application State/com.ourtechaccessories.profitadmin.savedState",
    "~/Library/WebKit/com.ourtechaccessories.profitadmin",
  ]
end
