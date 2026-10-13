class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.19.0/pixee-darwin-arm64.tar.gz"
      sha256 "b851a3380bfad918b61605cac6bbff8f26fe682ae13e3e73c346b74f67a19775"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.19.0/pixee-linux-x64.tar.gz"
      sha256 "90ae5e0f556edef6739f2f7fc668028aa0cc44e5662f572e7a7671836fc4ed5c"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.19.0/pixee-linux-arm64.tar.gz"
      sha256 "77deaa2850a24b2cad63fbd49824b440e958a16ab776f87d46417211e6697b09"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
