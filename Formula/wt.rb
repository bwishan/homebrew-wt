class Wt < Formula
  desc "Git Worktree Manager - A minimalist CLI for managing git worktrees"
  homepage "https://github.com/bwishan/wt"
  url "https://github.com/bwishan/wt/releases/download/v0.3.0/wt-0.3.0-universal.tar.gz"
  sha256 "9e0f5db78ba7b88398691fa2c2f7f8216b389041e9fb58e2ae8a3fdb7171b77d"
  version "0.3.0"
  license "MIT"

  depends_on "python@3.11"
  depends_on "git"

  def install
    bin.install "wt"
  end

  test do
    system "#{bin}/wt", "--version"
    assert_match "wt 0.3.0", shell_output("#{bin}/wt --version")
  end
end