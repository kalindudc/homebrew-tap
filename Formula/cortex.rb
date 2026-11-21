class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.109.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.109.2/cortex-0.109.2-darwin-arm64.tar.gz"
      sha256 "083a3ed7fcb3ffd287bbce40dda3be03becf007099702476870cb31700531e28"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.109.2/cortex-0.109.2-darwin-x64.tar.gz"
      sha256 "3678709a1d99ef546b61b735f87e6a4c5ae06b3e4467449c05061d3080830a17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.109.2/cortex-0.109.2-linux-arm64.tar.gz"
      sha256 "98977c08ebeedfefc366614aed0f3f0488dda4d872b3e2a8a7688cc814f35876"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.109.2/cortex-0.109.2-linux-x64.tar.gz"
      sha256 "178860dc06ab8266b015932873f594208c4ee79aef8eea883a6366411b43345d"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.109.2/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
