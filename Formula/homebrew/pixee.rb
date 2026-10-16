class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.21.0/pixee-darwin-arm64.tar.gz"
      sha256 "7343d8970e941d17d4ac056aef77283a213cdbb4d65c4136ca4e52e3720669c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.21.0/pixee-linux-x64.tar.gz"
      sha256 "a8ae9f874e4f651e277aac5c24dc7c3da5a17ce75ff7c6e18147bde59a84d9d5"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.21.0/pixee-linux-arm64.tar.gz"
      sha256 "d6e1d0b1265f2595093737e997eb154f43016de6a4ac1c872345598069a3d61d"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
