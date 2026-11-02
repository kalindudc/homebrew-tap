class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.102.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.102.2/cortex-0.102.2-darwin-arm64.tar.gz"
      sha256 "c82e7c029ddeae503763861d338f691562c347d9ec949fab9257f0213ef15fb9"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.102.2/cortex-0.102.2-darwin-x64.tar.gz"
      sha256 "359d36ff443d3278f0bf0609c635a3c3b84499d895969348ae66ba7512f6ab7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.102.2/cortex-0.102.2-linux-arm64.tar.gz"
      sha256 "e8f8df3f87ec520fc1e4422c9287b092c2bb6bb97803cc9c57bf4b2d074de68d"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.102.2/cortex-0.102.2-linux-x64.tar.gz"
      sha256 "d8d43127aa762a75104b2bf43011b22abfb087c0ce10e7bf95990d8df429d76c"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.102.2/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
