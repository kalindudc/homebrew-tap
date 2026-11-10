class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.103.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.103.1/cortex-0.103.1-darwin-arm64.tar.gz"
      sha256 "72cf8d59391ae581cc2a1c0ba68c73e7d98793c2c0db0c649dec744d2c10aef8"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.103.1/cortex-0.103.1-darwin-x64.tar.gz"
      sha256 "ba7153ed08348da4ccea2660d6426cbc00d4bc720cf84ffce33eb9d688658b35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.103.1/cortex-0.103.1-linux-arm64.tar.gz"
      sha256 "63cd764d86826642f12f578f35b675e162b4d7f866d8058664eebb5e7fc289fa"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.103.1/cortex-0.103.1-linux-x64.tar.gz"
      sha256 "73ffa34327427dd46da4c74b65615b62e6a23b2c1e4dba29fd898e4e2ddf8773"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.103.1/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
