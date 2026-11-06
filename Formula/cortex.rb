class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.103.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.103.0/cortex-0.103.0-darwin-arm64.tar.gz"
      sha256 "4551115ea0d0b5d08111e308a4e780028c486bbe040932974f1f9b1a70f88451"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.103.0/cortex-0.103.0-darwin-x64.tar.gz"
      sha256 "8303ef887cdd020ccfee6a7e2ede784be67c2bf25217aabad91721075b835ee0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.103.0/cortex-0.103.0-linux-arm64.tar.gz"
      sha256 "06dc73c219221fcbe956c857eb5045847816cd96e75331ca7dfcc9fd627d212d"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.103.0/cortex-0.103.0-linux-x64.tar.gz"
      sha256 "5b4fa21c79627fe3a4971e2492200576ac4c3a499f0b7dafa6cbc1bdf367cb35"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.103.0/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
