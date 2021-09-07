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
    root_url "https://github.com/onelogin/homebrew-tap-onelogin/releases/download/onelogin-0.1.17"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "0ba79060d7ae89cfc512f64b7062be103f2f3c0179de26d188b25e9cca151906"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cf0350d31bcc9ef151e8eb2db31d9b08caeabd0fa2dc0c48f2c230730f0e2212"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "true"
  end
end
