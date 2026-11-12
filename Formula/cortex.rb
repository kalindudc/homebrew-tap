class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.107.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.107.0/cortex-0.107.0-darwin-arm64.tar.gz"
      sha256 "19f8bf751101cc109f9cb2aec76208c536718f308ed87ce3b25ad37bc1e5e74f"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.107.0/cortex-0.107.0-darwin-x64.tar.gz"
      sha256 "7b2d1fffb71a2190c07cefa90df219292e55fdd406d6973724a28ab89dec0584"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.107.0/cortex-0.107.0-linux-arm64.tar.gz"
      sha256 "a9df978566cb0a24ac4b1a90719f324cb6483bef280422bbaccaab74741e49bd"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.107.0/cortex-0.107.0-linux-x64.tar.gz"
      sha256 "972b12f34cf2fc121c66603c2eb1cf63c0c82991fdd3f7f15e6a1c33a81b06c2"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.107.0/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
