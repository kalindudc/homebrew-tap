class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.105.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.4/cortex-0.105.4-darwin-arm64.tar.gz"
      sha256 "3329a33d90977a92ecfb30efacb78e47cde02480cffd6ab1c326c741b7d1f124"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.4/cortex-0.105.4-darwin-x64.tar.gz"
      sha256 "30657e25c3122ad72906b5d5a13df34effc3d72aea6a8f968c005a6b4ffee7e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.4/cortex-0.105.4-linux-arm64.tar.gz"
      sha256 "3e955e197dfef30923ffbcdca67c7c89b15b74b5cd31de6a44705142956b0f0f"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.4/cortex-0.105.4-linux-x64.tar.gz"
      sha256 "9f588e8ac8a239ccedd8f43bc1468329681605c250e9ce1ff9b1ae607713fd02"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.105.4/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
