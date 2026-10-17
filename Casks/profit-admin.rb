cask "profit-admin" do
  version "0.1.9"
  sha256 "b49c0b5ce3003eb09df4af2c2d259b39e66eb22bf4e466518bbc1d40fd88ead7"

  url "https://github.com/JamesMMiller/homebrew-tap/releases/download/profit-admin-v0.1.9/ProfitAdmin-#{version}.dmg"
  name "Profit Admin"
  desc "Native desk for Our Tech Profit Admin"
  homepage "https://desk.ourtechaccessories.com/"

  # Frozen 17 Oct 2026: the Mac app is no longer used or maintained. 0.1.9 is the last version.
  deprecate! date: "2026-10-17", because: :unmaintained

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
