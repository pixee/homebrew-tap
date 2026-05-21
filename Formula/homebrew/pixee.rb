class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.16.0/pixee-darwin-arm64.tar.gz"
      sha256 "b43d8130c3f9222bc8313c88a7fbbd51b05a94eeaf074cccf44ab3325db5ed53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.16.0/pixee-linux-x64.tar.gz"
      sha256 "6309fce6defab4d968485805809b269946382da923ee0a4078e1d1fe024c6630"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.16.0/pixee-linux-arm64.tar.gz"
      sha256 "e00e2a8207a83461176a2b9f92b2e3e7c2451957b26447fce9655854409a6159"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
