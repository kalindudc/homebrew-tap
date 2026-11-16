class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.109.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.109.1/cortex-0.109.1-darwin-arm64.tar.gz"
      sha256 "d9822efff7e47115ccc4753bc6d17b52c9c7e50e6201715fa17e608889849c58"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.109.1/cortex-0.109.1-darwin-x64.tar.gz"
      sha256 "7651bc598166a1d2b012db8a8621e1912b555f11787ab753d94e08e76b060ac1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.109.1/cortex-0.109.1-linux-arm64.tar.gz"
      sha256 "ebdd43b5b84688467761a781b83acddd6bce4a4abb532d8f16a1ba025ce61cb4"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.109.1/cortex-0.109.1-linux-x64.tar.gz"
      sha256 "1f182a51ac9eea074559fa593df8b83256ca4175a9cc12d9ec38ea168995a13b"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.109.1/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
