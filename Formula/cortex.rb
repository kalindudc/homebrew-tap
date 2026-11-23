class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.110.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.2/cortex-0.110.2-darwin-arm64.tar.gz"
      sha256 "22ac1f3ec557a78e44f9cbedbb609ea000a77b073d36ec19258229adf3ea47c7"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.2/cortex-0.110.2-darwin-x64.tar.gz"
      sha256 "90dec2bbef414a34bb7fb950a7b62f8ccb487f2496d1564c469c7525878cc75c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.2/cortex-0.110.2-linux-arm64.tar.gz"
      sha256 "e7c8f06289556ca3b6d96338784927bf3f8a6519f02be031da0f895e195756e4"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.110.2/cortex-0.110.2-linux-x64.tar.gz"
      sha256 "dcffeffc35585d429597aab9de3e1ad41137ff02dcdf6df7cd8c6dd5c001bc44"
    end
  end

  def install
    bin.install "cortex"
  end

  def caveats
    <<~EOS
      Create your database with `cortex init`, then set up your agents with `cortex agents install`.
      For the desktop app of the same version, run the install script for the app alone:
        curl -fsSL https://github.com/kalindudc/cortex/releases/download/v0.110.2/install.sh | CORTEX_NO_CLI=1 sh
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end
