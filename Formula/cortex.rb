class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.105.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.0/cortex-0.105.0-darwin-arm64.tar.gz"
      sha256 "c3988b290e2a5814bd5af71653924a07fe1bedf778007bcc2b34ce55da87b3d1"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.0/cortex-0.105.0-darwin-x64.tar.gz"
      sha256 "0e0fc3502a969b413610d8fdb1035d013d99dc23e9ab9b1a472a133e02b9da37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.0/cortex-0.105.0-linux-arm64.tar.gz"
      sha256 "ddfbb931f9d609bc73dd606e7bd3dadd06b348cbf9d92136443539e8580065d8"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.0/cortex-0.105.0-linux-x64.tar.gz"
      sha256 "bdbbdcc8ac49d4676a39b7b2f3d30afd2f9be04afd7573e8b827fe3bd2dda66d"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.105.0/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
