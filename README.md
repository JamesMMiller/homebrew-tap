# Our Tech Accessories — Homebrew tap

## Profit Admin (macOS 14+)

> **Frozen and unmaintained (17 Oct 2026).** The Mac app is no longer used, released or supported. 0.1.9 is the last version; no fixes will ship. The cask is marked deprecated, so `brew` warns on install. Releases and history stay here. The `pa` CLI formula is also no longer released.

```bash
brew install --cask jamesmmiller/tap/profit-admin
```

Opens the Profit Admin desk in a native window. You still sign in with your
desk account (Cloudflare Access), so installing the app grants no access.

Upgrade with `brew upgrade --cask profit-admin`; remove with
`brew uninstall --cask --zap profit-admin`.

The app is not notarized by Apple. The cask clears the download quarantine flag
so macOS will open it. If you install from the `.dmg` on the
[releases page](https://github.com/JamesMMiller/homebrew-tap/releases) instead,
drag it to Applications, then run
`xattr -dr com.apple.quarantine "/Applications/Profit Admin.app"` once, or
allow it under System Settings → Privacy & Security.
