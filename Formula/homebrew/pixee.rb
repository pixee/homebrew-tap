class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.14.0/pixee-darwin-arm64.tar.gz"
      sha256 "f40014714047bd446e6547915e233290b890f1dc5ba30b4db7e56648923615d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.14.0/pixee-linux-x64.tar.gz"
      sha256 "75663c4ebd4fd9aabaa365a9fa357ea6273f93a3ab684fc0413ce19d754c688a"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.14.0/pixee-linux-arm64.tar.gz"
      sha256 "1bd96a102bdd52f3438cb4b6623741468b596095158d9156e2ea4bc1014f615d"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
