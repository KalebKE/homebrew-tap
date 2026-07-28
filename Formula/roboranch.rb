class Roboranch < Formula
  desc "Android emulator and device lease broker for local development and CI"
  homepage "https://github.com/KalebKE/RoboRanch"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KalebKE/RoboRanch/releases/download/v0.2.0/roboranch_v0.2.0_darwin_arm64.tar.gz"
      sha256 "a4fb92aa786cf6e879102c06912997653beaac4fba039b9875f44803782060b3"
    end

    on_intel do
      url "https://github.com/KalebKE/RoboRanch/releases/download/v0.2.0/roboranch_v0.2.0_darwin_amd64.tar.gz"
      sha256 "f65284330a74ea451daaa371b90c0f2848caae6810c21d07dfc5be04830e7a1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KalebKE/RoboRanch/releases/download/v0.2.0/roboranch_v0.2.0_linux_arm64.tar.gz"
      sha256 "3dcac557d64a2f509ca15ea39520acb38e118f1f0f2175355900499db1039f4c"
    end

    on_intel do
      url "https://github.com/KalebKE/RoboRanch/releases/download/v0.2.0/roboranch_v0.2.0_linux_amd64.tar.gz"
      sha256 "4963e7ced87dc834b5c2cc9ffa367329b23ae409dcb30f2f06adc23483198851"
    end
  end

  def install
    bin.install "roboranch"
  end

  test do
    assert_match "Usage: roboranch", shell_output("#{bin}/roboranch --help 2>&1")
  end
end
