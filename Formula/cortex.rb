class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.107.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.107.1/cortex-0.107.1-darwin-arm64.tar.gz"
      sha256 "fac995c95a9895b4d04cb47b5786fa06b193bf4f086deaa14de7b50178fe9f5f"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.107.1/cortex-0.107.1-darwin-x64.tar.gz"
      sha256 "cdf40b343af549300e95e597f0a14d888ce8114f38e27a17a2dc0e5d64ce2090"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.107.1/cortex-0.107.1-linux-arm64.tar.gz"
      sha256 "61caffc19ae191f24bb0813f85402d818ced41ca5e81408f9f8d633160c59e69"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.107.1/cortex-0.107.1-linux-x64.tar.gz"
      sha256 "96b3125380a6233afdb3fa4d235cfad4bf0f0730f1d78f5e322fc08c5539fd80"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.107.1/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
