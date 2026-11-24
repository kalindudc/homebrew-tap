class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.110.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.3/cortex-0.110.3-darwin-arm64.tar.gz"
      sha256 "2233c317f8baf975b4ca213c9e90ea5f180265159f32a144cf6c5e8f4b414efe"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.3/cortex-0.110.3-darwin-x64.tar.gz"
      sha256 "9de731a844735bdb35f91d03cd6d1bf0ad02f0690f4e406043adff183d0562b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.3/cortex-0.110.3-linux-arm64.tar.gz"
      sha256 "95d344e41d9387b820307dc1340ea74d395b114552812fdd53ea5f650248b146"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.3/cortex-0.110.3-linux-x64.tar.gz"
      sha256 "79ca9ea99747754335f2e6fa71a64a94ec7f8ccc26f87463f8a570257bb90f11"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.110.3/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
