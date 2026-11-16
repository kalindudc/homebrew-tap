class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.109.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.109.0/cortex-0.109.0-darwin-arm64.tar.gz"
      sha256 "3633f392d572bfb935a7bd820321745b6f225f27f8af7313c3dac7798b6170c6"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.109.0/cortex-0.109.0-darwin-x64.tar.gz"
      sha256 "28cdefe6c1eccecfeb083bf6c784813613e6948b0ae156c94b49eeff1077c877"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.109.0/cortex-0.109.0-linux-arm64.tar.gz"
      sha256 "0478b308838683b4774ac729b45637b39342f46af887bd6c8b5d380212dcf87a"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.109.0/cortex-0.109.0-linux-x64.tar.gz"
      sha256 "ef4b8817519da9cfa01999803675f9cb24824b59ead8295358f69f444a4d62de"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.109.0/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
