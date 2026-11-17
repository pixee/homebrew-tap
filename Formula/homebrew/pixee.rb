class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.22.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.22.1/pixee-darwin-arm64.tar.gz"
      sha256 "a8880cc4de9953ade1af6320b884648d2935854ecba7c75b1b32def1ceca3699"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.22.1/pixee-linux-x64.tar.gz"
      sha256 "9b12fe5ea54e0dce8334e41aa188f536b4ef202e2e34e285eba438bccc6d02a7"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.22.1/pixee-linux-arm64.tar.gz"
      sha256 "f46be4b54ae0226022a34ed3212257e8947d873dcd4173abb7fa43a6886a4077"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
