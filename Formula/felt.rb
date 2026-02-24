# typed: false
# frozen_string_literal: true

class Felt < Formula
  desc "DAG-native task tracker. Markdown files with dependencies."
  homepage "https://github.com/cailmdaley/felt"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cailmdaley/felt/releases/download/v0.3.0/felt_Darwin_x86_64.tar.gz"
      sha256 "131697e98b93f03a27ec4599e087bc99379a2546256f6c64597735047d818aa5"
    end
    on_arm do
      url "https://github.com/cailmdaley/felt/releases/download/v0.3.0/felt_Darwin_arm64.tar.gz"
      sha256 "ff0082cb1988257b48fee938bac20b8f8af1eb2ac8228470bcb79f29b83f2451"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cailmdaley/felt/releases/download/v0.3.0/felt_Linux_x86_64.tar.gz"
      sha256 "244e8cad45eb01344c4c6595cfa5bfe98461ab8a5a85e5f68236d029596c229f"
    end
    on_arm do
      url "https://github.com/cailmdaley/felt/releases/download/v0.3.0/felt_Linux_arm64.tar.gz"
      sha256 "e4bacff2af97d937c9de9ab5df3983d834158af2a309fa8810e7712f3e3eaf91"
    end
  end

  def install
    bin.install "felt"
  end

  test do
    system "#{bin}/felt", "--help"
  end
end
