class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.110.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.0/cortex-0.110.0-darwin-arm64.tar.gz"
      sha256 "bff2125b44a79181c86c61a74ef5f1044bf13a71881d1f8ad11bf3c277b3e35a"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.0/cortex-0.110.0-darwin-x64.tar.gz"
      sha256 "f29755a363df7ca8535cf1a5c94d246e95247b14f009c217279045ba7dbac37c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.0/cortex-0.110.0-linux-arm64.tar.gz"
      sha256 "8f0d5f2f4aa27264e66511381591a36407a2ba20868b0b34576334fd78986c6c"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.0/cortex-0.110.0-linux-x64.tar.gz"
      sha256 "93fb488455b75c79cd7e66e85cdb0d315a97e41d2bd3e7f4fb854428ea77f3fa"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.110.0/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
