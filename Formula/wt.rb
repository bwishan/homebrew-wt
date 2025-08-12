class Wt < Formula
  desc "Git Worktree Manager - A minimalist CLI for managing git worktrees"
  homepage "https://github.com/bwishan/wt"
  url "https://github.com/bwishan/wt/releases/download/v0.3.1/wt-0.3.1-universal.tar.gz"
  sha256 "0a1b61d51c0074a8db033015ae8a2c185b19a4b3506ec482970f6e0c0dacadaa"
  version "0.3.1"
  license "MIT"

  depends_on "python@3.11"
  depends_on "git"

  def install
    bin.install "wt"
  end

  test do
    system "#{bin}/wt", "--version"
    assert_match "wt 0.3.1", shell_output("#{bin}/wt --version")
  end
end