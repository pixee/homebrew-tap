class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.9.1/pixee-darwin-arm64.tar.gz"
      sha256 "d736d60646876560ef92327200e3e963b544caca9f4ad55fec632f209d6d5854"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.9.1/pixee-linux-x64.tar.gz"
      sha256 "ae96a3c5e4ac0cacf3b552f2d92a0dd8c4ed3eaa7d30417c5a91bc915b9f5245"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.9.1/pixee-linux-arm64.tar.gz"
      sha256 "eacf00ba6a2d2ecde8cf54a52b76923a8748fc12eaf01bfe5674bffac895459c"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
