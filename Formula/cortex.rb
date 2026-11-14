class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.108.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.108.0/cortex-0.108.0-darwin-arm64.tar.gz"
      sha256 "d2aa3eca154580afbdcefe0cdeb58fe13632e57db9480f4883cd458797d238fe"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.108.0/cortex-0.108.0-darwin-x64.tar.gz"
      sha256 "ca012cdb116842d79371931702eeefdbb9c12d82459f53299e206de5bbeb1e52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.108.0/cortex-0.108.0-linux-arm64.tar.gz"
      sha256 "39b9c8df348fae3693d088515e87bfe74db238311b5114f317e3409e66dccab4"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.108.0/cortex-0.108.0-linux-x64.tar.gz"
      sha256 "f116659e974badb398393e7e5df0cc5e3d4a75817ff8e35373c0cffec93fe058"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.108.0/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
