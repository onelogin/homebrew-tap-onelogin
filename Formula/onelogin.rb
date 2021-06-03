class Onelogin < Formula
  desc "CLI for Using OneLogin"
  homepage "https://github.com/onelogin/onelogin"
  url "https://github.com/onelogin/onelogin/archive/refs/tags/v0.1.15.tar.gz"
  sha256 "5689b232e7dc825764d84789b5789357e3fbbf9df8090edfcca300974e2666ee"
  license "Apache-2.0"
  head "https://github.com/onelogin/onelogin.git", branch: "develop"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "true"
  end
end
