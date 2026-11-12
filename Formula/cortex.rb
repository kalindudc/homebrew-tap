class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.105.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.1/cortex-0.105.1-darwin-arm64.tar.gz"
      sha256 "812adcc14619696d85f2d5bf4aa267de12663c609bdfac81ef816c30a1a31751"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.1/cortex-0.105.1-darwin-x64.tar.gz"
      sha256 "a669bcecc99a34c07dffd08c30b40672d5e02027df9abfd66bbf1f2671580d78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.1/cortex-0.105.1-linux-arm64.tar.gz"
      sha256 "c20aca4ebac4ac7d6641dcd8c85963151ff29f03a16dfa5dba408b8bc7a3376b"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.1/cortex-0.105.1-linux-x64.tar.gz"
      sha256 "02bfab7514b3eb2ea5cf7453f5ad78914c25ed2b41e38c503d298927c0962b95"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.105.1/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
