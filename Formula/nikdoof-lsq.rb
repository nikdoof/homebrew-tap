class NikdoofLsq < Formula
  desc "Command-line tool for Logseq to quickly create and edit journal entries"
  homepage "https://github.com/jrswab/lsq"
  url "https://github.com/jrswab/lsq/releases/download/v1.4.0/lsq_1.4.0_darwin_arm64.tar.gz"
  sha256 "418e7ad6e916777ca7320b49204194a200fd3b972f431299c4ea79f0afc77431"
  license "GPL-3.0-or-later"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jrswab/lsq/releases/download/v1.4.0/lsq_1.4.0_darwin_amd64.tar.gz"
    sha256 "4d10d99f895ccefcc443027e34a5aff4f6577ef62f69f2bdf7597c24bf8e7600"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jrswab/lsq/releases/download/v1.4.0/lsq_1.4.0_darwin_arm64.tar.gz"
    sha256 "418e7ad6e916777ca7320b49204194a200fd3b972f431299c4ea79f0afc77431"
  end

  if OS.linux? && Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
    url "https://github.com/jrswab/lsq/releases/download/v1.4.0/lsq_1.4.0_linux_386.tar.gz"
    sha256 "e4e978b01eb05bb507fc8e8e94d362190e63ea769782e087bf3d69977c57e6af"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jrswab/lsq/releases/download/v1.4.0/lsq_1.4.0_linux_amd64.tar.gz"
    sha256 "6406e5cd8b75358abbcd4a8b2fcc4f21dc64d3b3bf2c20e44261f7e033c77321"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jrswab/lsq/releases/download/v1.4.0/lsq_1.4.0_linux_arm64.tar.gz"
    sha256 "71154e246031467a9a68c2ea6e8050c02bae63607a606d6b896899579cbb34a5"
  end

  def install
    bin.install "lsq"
  end

  test do
  system "#{bin}/lsq", "-v"
  end
end
