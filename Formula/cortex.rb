class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.105.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.5/cortex-0.105.5-darwin-arm64.tar.gz"
      sha256 "1a54044e4378cb8ad65023ac1280c502068399a118dda674e87ea796537f4b4e"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.5/cortex-0.105.5-darwin-x64.tar.gz"
      sha256 "23b94b8c1b4e3965a94a48aabd81fbd5289c5d7d32dbfe7216c1105216b1da3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.5/cortex-0.105.5-linux-arm64.tar.gz"
      sha256 "7e903ee62659b501e492b324a42b7d3fc9fe2e1c51963464ff587674569039e5"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.5/cortex-0.105.5-linux-x64.tar.gz"
      sha256 "c4d95470847d73183f4ccb6005344b537182a29801e84f3dd3d46d32e268ae8c"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.105.5/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
