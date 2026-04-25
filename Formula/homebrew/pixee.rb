class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.10.0/pixee-darwin-arm64.tar.gz"
      sha256 "45306a72500d9a9675eed507f5cd74df2c557d1c013d7a8dcb9ab0964fe57f7d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.10.0/pixee-linux-x64.tar.gz"
      sha256 "bde7e37d5382c6d497516b7501028eeee33e12e9bf246a4b5cf4942c6348d25e"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.10.0/pixee-linux-arm64.tar.gz"
      sha256 "76f81b22d49e5aabb12f94e0b6b4bc73b7c446fe2913f600a3e4845a3073f3b9"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
