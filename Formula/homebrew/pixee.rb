class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.13.0/pixee-darwin-arm64.tar.gz"
      sha256 "8a5e44c218ed211bcb1733a9f4e9b463ff2a301495a7ed7ab6f44be96a0a5f8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.13.0/pixee-linux-x64.tar.gz"
      sha256 "42d0fc144f35e0a2a6f76c6bac8447309f8c9c7b001dd6f0751fb798ee27019d"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.13.0/pixee-linux-arm64.tar.gz"
      sha256 "37c3e1312297f6510bd2c9e33353477960474d2c2437f7b2c574d5ab1db63b09"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
