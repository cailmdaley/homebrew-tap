# typed: false
# frozen_string_literal: true

class Felt < Formula
  desc "DAG-native task tracker. Markdown files with dependencies."
  homepage "https://github.com/cailmdaley/felt"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cailmdaley/felt/releases/download/v0.1.0/felt_Darwin_x86_64.tar.gz"
      sha256 "3d630e258a72eae4c33562d4dc3889ac9cee2ba57f016dfe660f66a35ccc60a2"
    end
    on_arm do
      url "https://github.com/cailmdaley/felt/releases/download/v0.1.0/felt_Darwin_arm64.tar.gz"
      sha256 "d9d71751c6c775d1963100605f138dba14764951c78a4bc6b7aa9e8ad16a8df5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cailmdaley/felt/releases/download/v0.1.0/felt_Linux_x86_64.tar.gz"
      sha256 "29c6fc53c597e252b752fe03ee470ec29c3768a1b26bc55aaf812caf3a2d9781"
    end
    on_arm do
      url "https://github.com/cailmdaley/felt/releases/download/v0.1.0/felt_Linux_arm64.tar.gz"
      sha256 "2744cb9f9da45b117fa58ae8b761159341a254daa9b430a6d3baa4d57ae4e609"
    end
  end

  def install
    bin.install "felt"
  end

  test do
    system "#{bin}/felt", "--help"
  end
end
