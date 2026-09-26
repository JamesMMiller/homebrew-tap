# Formula for the public tap JamesMMiller/homebrew-tap.
# CI fills version / sha256 / url placeholders below (see scripts/package-cli-release.sh).
# Install: brew install jamesmmiller/tap/profit-admin-cli
# Binary:  pa

class ProfitAdminCli < Formula
  include Language::Python::Virtualenv

  desc "Command-line client for the Profit Admin machine API"
  homepage "https://desk.ourtechaccessories.com/"
  url "https://github.com/JamesMMiller/profit-admin/releases/download/cli-v0.1.0/profit-admin-cli-0.1.0.tar.gz"
  sha256 "17eb81f73bc7f9b21a57b89c5951a169ee7d09cbecb4c706541c68535984f272"
  license :cannot_represent
  version "0.1.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pa version")
    assert_match "usage", shell_output("#{bin}/pa --help")
  end
end
