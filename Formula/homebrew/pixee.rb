class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.17.0/pixee-darwin-arm64.tar.gz"
      sha256 "62d3b4e2545b086602902e8c40e7b50b7e8a961864ab795286147a6dea183c4d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.17.0/pixee-linux-x64.tar.gz"
      sha256 "fb497eac681970e93abe8a77c70a796d0317001c7bd207f05ec432bffa44c22f"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.17.0/pixee-linux-arm64.tar.gz"
      sha256 "6546a05a93fce80259b8531038e92656e806e8de689fc672a0fe74685ef91e21"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
