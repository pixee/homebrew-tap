class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.12.0/pixee-darwin-arm64.tar.gz"
      sha256 "676a9566e84093c47549a675e25a3d3e71eebb0020b6d1f1d7cfe27231d44a5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.12.0/pixee-linux-x64.tar.gz"
      sha256 "8e36f709538da224ffdd956ff2796aa0252fc711d72eee8fa31909e65bb41c76"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.12.0/pixee-linux-arm64.tar.gz"
      sha256 "15b5f1a5946859934b72a2cf0aaf5051b6930828e3c74ce92be83e9c5ca28838"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
