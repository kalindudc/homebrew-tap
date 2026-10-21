class Cortex < Formula
  desc "Local task tracker for supervising several AI coding agents at once"
  homepage "https://github.com/kalindudc/cortex"
  version "0.99.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.99.0/cortex-0.99.0-darwin-arm64.tar.gz"
      sha256 "1dadeb2fc57721bff9078d93014314da5aeeaf341e4ca865c94e453e77b3f710"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.99.0/cortex-0.99.0-darwin-x64.tar.gz"
      sha256 "4373757495a296955b651122728e981ce965745ebf29e7b8cf118dcfc0c8d839"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kalindudc/cortex/releases/download/v0.99.0/cortex-0.99.0-linux-arm64.tar.gz"
      sha256 "ec960c700c812ffc0384b3557c5f55abd8fee0cb6ed25996221620e8dc85f903"
    end
    on_intel do
      url "https://github.com/kalindudc/cortex/releases/download/v0.99.0/cortex-0.99.0-linux-x64.tar.gz"
      sha256 "8d8aeb17ae143b7fe7b9b06c6f5608c70e6eb0cba8606a486d6113fe44e0f390"
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
