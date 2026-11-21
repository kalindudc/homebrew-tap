class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.110.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.1/cortex-0.110.1-darwin-arm64.tar.gz"
      sha256 "d251ababaf5e21e749fdbf0efad0c40ca4741b6a1f9ea7b208c57b5b1e17594d"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.1/cortex-0.110.1-darwin-x64.tar.gz"
      sha256 "e66b64f765336e330b2d69b1461f3d83ef44ad84a528bde848f05d0d19616879"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.1/cortex-0.110.1-linux-arm64.tar.gz"
      sha256 "29e3d15f591a91bc45d664a24a15c0ea9d7614530ed1354853ef2b332ecee4a9"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.1/cortex-0.110.1-linux-x64.tar.gz"
      sha256 "5ae26a93d321ac0a5d9d9ac22105007e4d1265099449df668891f966dfa145af"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.110.1/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
