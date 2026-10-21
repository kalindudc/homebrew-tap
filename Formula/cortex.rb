class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.99.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.99.1/cortex-0.99.1-darwin-arm64.tar.gz"
      sha256 "acabada3e036a002b82a02576b24b0c0579acc902806255a0bb33adcae8e9437"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.99.1/cortex-0.99.1-darwin-x64.tar.gz"
      sha256 "bb1baf08c632c97f0617856c375e268d9683129ab4bea9f52ffb36073d52e6ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.99.1/cortex-0.99.1-linux-arm64.tar.gz"
      sha256 "e4264e0a159029f0b27f1e8279a1290949323afd302d8bf2fa2fc0da85ec5935"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.99.1/cortex-0.99.1-linux-x64.tar.gz"
      sha256 "2c2141e8350fec5570d186606a94822f8bf520253b15a3a74fd4102b767a17c7"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      The desktop app is on the release page, or comes with the install script:
        https://github.com/kalindudc/cortex#install
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
