# Homebrew formula for ccswitch.
#
# This file belongs in a tap repo, e.g.:
#   https://github.com/gautamkumar7atgit/homebrew-ccswitch
#
# Install command:
#   brew tap gautamkumar7atgit/ccswitch
#   brew install ccswitch
#
# To update after a new release:
#   1. Download the new universal binary and run:
#        shasum -a 256 ccswitch
#   2. Update `url` and `sha256` below.
#   3. Commit and push to the tap repo.

class Ccswitch < Formula
  desc "Switch between multiple Claude Code OAuth accounts on macOS"
  homepage "https://github.com/gautamkumar7atgit/ClaudeCodeSwitch"
  version "0.1.2"

  # Universal binary (arm64 + x86_64)
  url "https://github.com/gautamkumar7atgit/ClaudeCodeSwitch/releases/download/v#{version}/ccswitch"
  sha256 "52e863121d15059cc87e600cfe34ee0c946226b2811068b236b6d7e434da7414"

  def install
    bin.install "ccswitch"
  end

  def caveats
    <<~EOS
      To set up ccswitch for the first time, run:
        ccswitch init

      This will import your existing Claude Code credentials and start
      the background sync daemon via launchd.
    EOS
  end

  test do
    assert_match "ccswitch", shell_output("#{bin}/ccswitch --version")
  end
end
