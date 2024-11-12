class AerolabAT760 < Formula
  desc ""
  homepage "https://github.com/robertglonek/homebrew-tools"
  version "7.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.0/aerolab-macos-amd64-7.6.0.zip"
      sha256 "58ba328ec3e461053be081eff58de120f00c40f5059d2389954560f168f3d009"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.0/aerolab-macos-arm64-7.6.0.zip"
      sha256 "4680d5c01f873e322961dfc6f8e342c940e1c5e5613396e46c6aa40df10d86ea"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.0/aerolab-linux-amd64-7.6.0.zip"
      sha256 "10e6ebee23037520faafe6ab7c964ed45644130a568087b4f0b9c7f39cfdfd2d"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.0/aerolab-linux-arm64-7.6.0.zip"
      sha256 "aba18d39334f6c7cf72a27c29ca0fefd5b49fa5c4c541e045bb49a8f1573ab24"

      def install
        bin.install "aerolab"
      end
    end
  end
end
