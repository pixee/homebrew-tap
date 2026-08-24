class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.18.0/pixee-darwin-arm64.tar.gz"
      sha256 "262bb48fb91e6e81a9b1152faf78bf314144fe6706d34c1295ef292f85131f0a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.18.0/pixee-linux-x64.tar.gz"
      sha256 "785e45727bdc0ad5bb4d08a1079854dd673a340d45693224f67821feaa39ce25"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.18.0/pixee-linux-arm64.tar.gz"
      sha256 "ad5bedec5d5e5985dec45631a138559c23dc1c6700c515421455170a846d9d61"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
