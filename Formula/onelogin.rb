class Onelogin < Formula
  desc "A CLI for Using OneLogin"
  homepage ""
  url "https://github.com/onelogin/onelogin/archive/refs/tags/v0.1.15.tar.gz"
  sha256 "5689b232e7dc825764d84789b5789357e3fbbf9df8090edfcca300974e2666ee"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    bin_path = buildpath/"src/github.com/onelogin/onelogin"
    # Copy all files from their current location (GOPATH root)
    # to $GOPATH/src/github.com/onelogin/onelogin
    bin_path.install Dir["*"]
    cd bin_path do
      # Install the compiled binary into Homebrew's `bin` - a pre-existing
      # global variable
      system "go", "build", *std_go_args
    end
  end

  test do
    ENV.delete "GITHUB_TOKEN"
    assert_match "no Github token found", shell_output(bin/"onelogin", 255)
  end
end
