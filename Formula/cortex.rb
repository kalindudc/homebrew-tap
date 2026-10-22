class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.101.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.101.1/cortex-0.101.1-darwin-arm64.tar.gz"
      sha256 "34ce45a06afcf7fee05c3b217f30d22edeb67dc9c2b53df1de0ba3308e8adc33"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.101.1/cortex-0.101.1-darwin-x64.tar.gz"
      sha256 "2448a6bfe009fe98637bb1a1e51d76c6a6cf69a2d5585fd61d4cc41a036c9e78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.101.1/cortex-0.101.1-linux-arm64.tar.gz"
      sha256 "487bb57edd63b1aa9bd9ecabdaa5e208cb7556f680d8c34a9ac56d7797b348c7"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.101.1/cortex-0.101.1-linux-x64.tar.gz"
      sha256 "d0d35ce942bf1de6d9b3dd2ff3f46db755f10697918aea1a579b0ec149a6c977"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.101.1/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
