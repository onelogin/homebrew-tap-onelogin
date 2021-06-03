class Onelogin < Formula
  desc "A CLI for Using OneLogin"
  homepage ""
  url "https://github.com/onelogin/onelogin/archive/refs/tags/v0.1.15.tar.gz"
  sha256 "5689b232e7dc825764d84789b5789357e3fbbf9df8090edfcca300974e2666ee"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "true"
  end
end
