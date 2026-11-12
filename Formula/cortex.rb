class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.105.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.2/cortex-0.105.2-darwin-arm64.tar.gz"
      sha256 "b8b4d21caa4a2dc886be12e973cb19397ed0419e600cd978c5543b916dba25ac"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.2/cortex-0.105.2-darwin-x64.tar.gz"
      sha256 "855da786ac99e3ff0a1e9c9658d6d4bcdf0985b8dce2bdb2a4aa48abf689bf8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.2/cortex-0.105.2-linux-arm64.tar.gz"
      sha256 "763504ddc8c49f3ae31922576b17f4f3d636a69054dcb2ce4d09b678915bf894"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.105.2/cortex-0.105.2-linux-x64.tar.gz"
      sha256 "8cd086a7c4f1d20ed055cf06c6d65569ee733536c267a715c06aa1cc10d63084"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.105.2/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
