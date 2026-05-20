class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.15.0/pixee-darwin-arm64.tar.gz"
      sha256 "b783652cece3e9255ab2f12861366a765a7a7f7afa4a37ed67536b5252d16840"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.15.0/pixee-linux-x64.tar.gz"
      sha256 "9a237a96750f70146838be8d88fc8a15de765c827c6844653f26e81298f38198"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.15.0/pixee-linux-arm64.tar.gz"
      sha256 "2788466c8982e8c1c30b7be3d9892f0620bf002d12140301b6bee32c948c4695"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
