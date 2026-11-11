class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.104.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.104.0/cortex-0.104.0-darwin-arm64.tar.gz"
      sha256 "f0e00e3ba4e26111a21adfa99737364dafbb36e3996e3ae0b71c2dd0cb1c977a"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.104.0/cortex-0.104.0-darwin-x64.tar.gz"
      sha256 "29b15f5f7615293445051e2bf9cd27d7a41516c8548a751512422f6fc04d436c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.104.0/cortex-0.104.0-linux-arm64.tar.gz"
      sha256 "0a71712ce2c37e468d55eb6f3a05dba604ae880acb7f10210f97c7860744edd4"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.104.0/cortex-0.104.0-linux-x64.tar.gz"
      sha256 "3e936f12775855aa68d3bbc2185aaabb5c765f64969ad8bd38f0b81347bb41ae"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.104.0/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
