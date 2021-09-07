class Onelogin < Formula
  desc "CLI for Using OneLogin"
  homepage "https://github.com/onelogin/onelogin"
  url "https://github.com/onelogin/onelogin/archive/refs/tags/v0.1.20.tar.gz"
  sha256 "be6f6e6ddec4357ce1b390aee14b371e83fc7c047541cec7070d7f915e7ead26"
  license "Apache-2.0"
  head "https://github.com/onelogin/onelogin.git", branch: "develop"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    root_url "https://github.com/onelogin/homebrew-tap-onelogin/releases/download/onelogin-0.1.20"
    sha256 cellar: :any_skip_relocation, catalina:     "89dbfb3bed20cef8c6236fb9e58890c98b4354918ce99d2ff41f4313388343de"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f38afed7ce7e90051ffd7cc6833d6ae2eb501570363f53cb1426cea759452533"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "true"
  end
end
