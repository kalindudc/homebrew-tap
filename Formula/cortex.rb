class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.102.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.102.1/cortex-0.102.1-darwin-arm64.tar.gz"
      sha256 "e244f3dbdfd2846ca2901e0879c6dc71c1d6e7be9da0fad0707b3c17523e28cf"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.102.1/cortex-0.102.1-darwin-x64.tar.gz"
      sha256 "506c58453da35c84b55fae3c39b2015bfa07c5a63e6268ff432c8f157acaa693"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.102.1/cortex-0.102.1-linux-arm64.tar.gz"
      sha256 "fde4a5c6e9b0b9706d1b92c874657c778e0c11c11ee37f3db087d409e4150a47"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.102.1/cortex-0.102.1-linux-x64.tar.gz"
      sha256 "b24c45f496248efbd6fe994422e53dbabcdc7724a1263b5a71e9ee323b5d71c7"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.102.1/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
