class Roboranch < Formula
  desc "Android emulator and device lease broker for local development and CI"
  homepage "https://github.com/KalebKE/RoboRanch"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KalebKE/RoboRanch/releases/download/v0.1.0/roboranch_v0.1.0_darwin_arm64.tar.gz"
      sha256 "36c35102bb3cbb9e8f3588f781bc52d444200abf18e711038681daed3aeaedcd"
    end

    on_intel do
      url "https://github.com/KalebKE/RoboRanch/releases/download/v0.1.0/roboranch_v0.1.0_darwin_amd64.tar.gz"
      sha256 "74772ca0df70aef52b75fdc641f4e32043b3fd397332ed0904c3fee41790f460"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KalebKE/RoboRanch/releases/download/v0.1.0/roboranch_v0.1.0_linux_arm64.tar.gz"
      sha256 "6a8539b86e1fdb4ccdf57e3b7d93eaf5ef4d5d666b74605db76c4933cdec1a77"
    end

    on_intel do
      url "https://github.com/KalebKE/RoboRanch/releases/download/v0.1.0/roboranch_v0.1.0_linux_amd64.tar.gz"
      sha256 "0278fb926fa7416ac878a5209656e6865bc0becbada6bd08f1902abb4397a713"
    end
  end

  def install
    bin.install "roboranch"
  end

  test do
    assert_match "Usage: roboranch", shell_output("#{bin}/roboranch --help 2>&1")
  end
end
