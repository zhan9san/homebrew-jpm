class Jpm < Formula
  desc "Jenkins Plugin Manager - generates reproducible plugin lock files"
  homepage "https://github.com/zhan9san/jpm"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zhan9san/jpm/releases/download/v#{version}/jpm-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7ec290a9a0c19cb005e2b014070e32d416cf412c5f58c221cc35edc44caf713d"
    end

    on_intel do
      url "https://github.com/zhan9san/jpm/releases/download/v#{version}/jpm-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3c3b162a41b7800f42d96858234ac790752f43522c084730ac2e6d817a7ab97a"
    end
  end

  def install
    bin.install "jpm"
  end

  test do
    system "#{bin}/jpm", "--version"
  end
end
