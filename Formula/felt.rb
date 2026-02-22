# typed: false
# frozen_string_literal: true

class Felt < Formula
  desc "DAG-native task tracker. Markdown files with dependencies."
  homepage "https://github.com/cailmdaley/felt"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cailmdaley/felt/releases/download/v0.2.0/felt_Darwin_x86_64.tar.gz"
      sha256 "604b172a5f78cd94003bcaf067ad58d04f1dac82749ef0d0e46bbd4b7ae874c1"
    end
    on_arm do
      url "https://github.com/cailmdaley/felt/releases/download/v0.2.0/felt_Darwin_arm64.tar.gz"
      sha256 "fddfb551f56ba52cd8cac5f9a1ccce3a980e1d8f21696fe1baab58dc2f0a14fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cailmdaley/felt/releases/download/v0.2.0/felt_Linux_x86_64.tar.gz"
      sha256 "1488b9f90673e984db8673e2459fd3cc145436cc676879d65644df02a47aaeca"
    end
    on_arm do
      url "https://github.com/cailmdaley/felt/releases/download/v0.2.0/felt_Linux_arm64.tar.gz"
      sha256 "c62407ecfd17615d2d2391c19aa82e3f1710302fd9c790a665eb7de4549eb981"
    end
  end

  def install
    bin.install "felt"
  end

  test do
    system "#{bin}/felt", "--help"
  end
end
