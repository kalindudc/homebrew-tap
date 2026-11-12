class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.105.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.3/cortex-0.105.3-darwin-arm64.tar.gz"
      sha256 "89bab0accbdebff0f48a4dfd8dcf72e98e98c7527ee13a114348265b843fe11c"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.3/cortex-0.105.3-darwin-x64.tar.gz"
      sha256 "ad6a80fdb5c34ece8b4ad5538bf2c6eaf5c47f8261f5e471a391e301edba5df7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.3/cortex-0.105.3-linux-arm64.tar.gz"
      sha256 "fe488ce4b15330ab5a9fc2590783b16918f5bb8ecf94e9ff90a20eafa0764827"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.3/cortex-0.105.3-linux-x64.tar.gz"
      sha256 "d035bf4bf378342f3d5ecd427b6aa11940c633f55dcc7f9875cbde2cefc718fe"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.105.3/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
