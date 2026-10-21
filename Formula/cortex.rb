class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.100.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.100.0/cortex-0.100.0-darwin-arm64.tar.gz"
      sha256 "664a9ad3ed46c5ea6d53e553c055f00b98f0248c076169d7484b7db06000e401"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.100.0/cortex-0.100.0-darwin-x64.tar.gz"
      sha256 "64e0bb551108008966c5b913379894dcdc9bfceee680ad49559c2ec5a624f940"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.100.0/cortex-0.100.0-linux-arm64.tar.gz"
      sha256 "ddbbf211c8c78ec36b6112eeb4692d1635c9245c2c21d5ac4485845b751b69e9"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.100.0/cortex-0.100.0-linux-x64.tar.gz"
      sha256 "8f95c98e3fe10ede2d26d3a32d32224abd5b7a9acc4051b4860d781ccf23c65a"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.100.0/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
