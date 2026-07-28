class Roboranch < Formula
  desc "Android emulator and device lease broker for local development and CI"
  homepage "https://github.com/KalebKE/RoboRanch"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KalebKE/RoboRanch/releases/download/v0.2.0/roboranch_v0.2.0_darwin_arm64.tar.gz"
      sha256 "ede53d6863267453048d21aa90b967cd884405b5cd9e53d1cbc192dd0b8d77b4"
    end

    on_intel do
      url "https://github.com/KalebKE/RoboRanch/releases/download/v0.2.0/roboranch_v0.2.0_darwin_amd64.tar.gz"
      sha256 "f6b66a3ef4dd03d842c5e068ceedc086136f2c31152d36175841bcd7cdd2f5f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KalebKE/RoboRanch/releases/download/v0.2.0/roboranch_v0.2.0_linux_arm64.tar.gz"
      sha256 "fce745445b815e46a1cd9bbf547aaf42ab8279c57bda4667de5079993da1241d"
    end

    on_intel do
      url "https://github.com/KalebKE/RoboRanch/releases/download/v0.2.0/roboranch_v0.2.0_linux_amd64.tar.gz"
      sha256 "9fb34aa5edfed95c3db71e6f01fb98a2b8f7d59a4f8c95e815f039398d8f0894"
    end
  end

  def install
    bin.install "roboranch"
  end

  test do
    assert_match "Usage: roboranch", shell_output("#{bin}/roboranch --help 2>&1")
  end
end
