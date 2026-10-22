class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.101.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.101.2/cortex-0.101.2-darwin-arm64.tar.gz"
      sha256 "40d7129420a2b5c0f4da05e1f3920bc9b3a95720855397cf1e7719dd227d3abd"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.101.2/cortex-0.101.2-darwin-x64.tar.gz"
      sha256 "280bdbfa00131412e0d66ce1399c524e53cc18783b10c9e430801cff8d801ad8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.101.2/cortex-0.101.2-linux-arm64.tar.gz"
      sha256 "daea50abb691315c74e759997604dc38a9dabc09b16f55d5869b4e2a33376504"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.101.2/cortex-0.101.2-linux-x64.tar.gz"
      sha256 "7245e48c7c89c2db7a99d13dc0b685e82266fb259b28e4d37a0abd0ab6823bae"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.101.2/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
