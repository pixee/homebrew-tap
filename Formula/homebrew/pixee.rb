class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.9.2/pixee-darwin-arm64.tar.gz"
      sha256 "2c081789f97f74abbaec6f658748bd0295785e9212e780e7d542bf687f2de18c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.9.2/pixee-linux-x64.tar.gz"
      sha256 "51f197af2eba9779cc72a1c1144d5ae42f4a24226006df73249f8392d4450589"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.9.2/pixee-linux-arm64.tar.gz"
      sha256 "209ab38f240c341a43fa2bf033e0129778ab949971f35368f9ef049868543453"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
