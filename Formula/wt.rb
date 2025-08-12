class Wt < Formula
  desc "Git Worktree Manager - A minimalist CLI for managing git worktrees"
  homepage "https://github.com/bwishan/wt"
  url "https://github.com/bwishan/wt/releases/download/v0.4.0/wt-0.4.0-universal.tar.gz"
  sha256 "2809ff933aa892062d3d2ea43386a2435c63e1af70544d7741d088f9ae9ff0f9"
  version "0.4.0"
  license "MIT"

  depends_on "python@3.11"
  depends_on "git"

  def install
    bin.install "wt"
  end

  test do
    system "#{bin}/wt", "--version"
    assert_match "wt 0.4.0", shell_output("#{bin}/wt --version")
  end
end