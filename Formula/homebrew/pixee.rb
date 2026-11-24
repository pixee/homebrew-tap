class Pixee < Formula
  desc "CLI for the Pixee agentic AppSec platform"
  homepage "https://github.com/pixee/pixee-cli"
  version "0.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.23.1/pixee-darwin-arm64.tar.gz"
      sha256 "a552cad76786a98a19ed0426aad96e6a03f86689b3da8b9cc1fca4d6de67d814"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.23.1/pixee-linux-x64.tar.gz"
      sha256 "c6c4b063c25b1a8c3b685dac55c7a26f32f78d42e5b6217e50ba0d3c9e9ad043"
    end
    on_arm do
      url "https://github.com/pixee/pixee-cli/releases/download/v0.23.1/pixee-linux-arm64.tar.gz"
      sha256 "644b74c194814e31053304ed81868ef69af380132f7da636aefc0ba394fc6e9c"
    end
  end

  def install
    bin.install "pixee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pixee --version")
  end
end
