class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.11.0/pixee-darwin-arm64.tar.gz"
      sha256 "ac85fa5fc403c4c942ac9859b0f0e8e772bbaba55c16992a1b6f4dc5de6e1b8a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.11.0/pixee-linux-x64.tar.gz"
      sha256 "14bcf76fb7edc563a4461cf6f0dfd07912985d004d331ba5689b8eaddbd26bb6"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.11.0/pixee-linux-arm64.tar.gz"
      sha256 "5a53b1290394aece9ed307ff75c4d266116727376ec91d2241dcd712055c8e9a"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
