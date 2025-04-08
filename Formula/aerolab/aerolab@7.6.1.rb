class AerolabAT761 < Formula
  desc ""
  homepage "https://github.com/robertglonek/homebrew-tools"
  version "7.6.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.1/aerolab-macos-amd64-7.6.1.zip"
      sha256 "a46f05fb0499554b7efe7faba993c116db812fd58b904bc7684dec98c91602d7"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.1/aerolab-macos-arm64-7.6.1.zip"
      sha256 "142216262361fe7aab415e7ce2d8db01ffb6e738c5521b9d8b58da2e5db64c8c"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.1/aerolab-linux-amd64-7.6.1.zip"
      sha256 "704da8f358a713d95ebd3bc0d7ab487584202a9e0a58a569dda168231b4b9180"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.1/aerolab-linux-arm64-7.6.1.zip"
      sha256 "d57a076a8c24c0acddb7ff6d5bf245a159b4714f8adb9b08ac4f8116557cd072"

      def install
        bin.install "aerolab"
      end
    end
  end
end
