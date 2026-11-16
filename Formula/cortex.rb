class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.108.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.108.2/cortex-0.108.2-darwin-arm64.tar.gz"
      sha256 "233e3cf018cbb4f9f27dcdfad1c944d2aa8da081d1e52dc6462d9be7b3286bb2"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.108.2/cortex-0.108.2-darwin-x64.tar.gz"
      sha256 "dbc00d6a47c2df27c3ca5a6dddeca668172feb7d12b4f63b5db24a4a8cb906dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.108.2/cortex-0.108.2-linux-arm64.tar.gz"
      sha256 "af7b96fadf770dbb354f3dde0989b1982674e4d4376cacc26288f28336cbb52b"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.108.2/cortex-0.108.2-linux-x64.tar.gz"
      sha256 "5333d0b0c8bd17890dc7ae839f889dbfba7247e1f326d6556a3be3d8fc2743bd"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.108.2/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
