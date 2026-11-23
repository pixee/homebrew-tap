class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.23.0/pixee-darwin-arm64.tar.gz"
      sha256 "6220e304b389c34445f5202189c6c07330abfa86c03e27e2d1e8d505ed1a51d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.23.0/pixee-linux-x64.tar.gz"
      sha256 "915ff24a5746130c17e86e8b6201db984dfe9d91eb1abf5de1de4be50dcc3cd5"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.23.0/pixee-linux-arm64.tar.gz"
      sha256 "8be488473a26f486307500c30e8aae7b19de3f9e20b126b8127b69c624c75d93"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
