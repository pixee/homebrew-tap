class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.20.0/pixee-darwin-arm64.tar.gz"
      sha256 "f85e598be14a07cbe5f591d7b2c28eab83aeaf7cff2345657acdd95c026795a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.20.0/pixee-linux-x64.tar.gz"
      sha256 "bfc26b635ba22a666970bd8e7270806cca9b0d046f750ff594a3d9ab0004e9b0"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.20.0/pixee-linux-arm64.tar.gz"
      sha256 "d4cd628e2f70d23cc30ced642428233eee4c73cf02781ac5db1b9993451b3b07"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
