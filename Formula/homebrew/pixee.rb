class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.16.1/pixee-darwin-arm64.tar.gz"
      sha256 "41183af51a9d7e847348f234cf19bf62c46437ff6efe8cf063efbf4672e17230"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.16.1/pixee-linux-x64.tar.gz"
      sha256 "cf15ecc30402fafbd2d9a1bd0b1c985d4017fcaa3cc74a804d5b99748cdfc94a"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.16.1/pixee-linux-arm64.tar.gz"
      sha256 "2e05e791bda047d8d13eadab438a83eec94007908b1be7dd3f8ebd161c30475c"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
