class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.106.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.106.0/cortex-0.106.0-darwin-arm64.tar.gz"
      sha256 "13d596749cf338ef9f7e88d99efc981e08ef1f7dd9f8041561e4c6d9f24c0e10"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.106.0/cortex-0.106.0-darwin-x64.tar.gz"
      sha256 "113c1734fcbb9efba8534c3ab1349855afd19b24fb6a1c400cfcb2f887dc7c47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.106.0/cortex-0.106.0-linux-arm64.tar.gz"
      sha256 "23c4c148ab0230b46dfa056ba5d386c45f0cba21b43a82a4cc24278ec4918ee1"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.106.0/cortex-0.106.0-linux-x64.tar.gz"
      sha256 "80a7e3daa49e708f47cc3d2c8267e17c530782dad22ea714732aef2934332a29"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.106.0/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
